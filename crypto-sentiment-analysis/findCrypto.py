from IPython import display
import math
from pprint import pprint
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
from requests import Request, Session
import json
import nltk
import praw
reddit = praw.Reddit(
    client_id="e1fAZZZl_0_p0eL-QdYgrg",
    client_secret="0whGDN6tKgchPPzRdoP6KUsD5swzAA",
    user_agent="Scraper 1.0 by Troisi",
)
import requests
from bs4 import BeautifulSoup
from googletrans import Translator, constants
translator = Translator()
bingNewsStart = 'www.bing.com/news'
bingNewsEnd = '&hl=en&qft=sortbydate%3d"1"&form=YFNR'
googleNewsStart =  'news.google.com'
googleNewsEnd = '&hl=en'
sns.set(style='darkgrid', context='talk', palette='Dark2')
import tweepy
TW_API_KEY = 'kvXdTL2YkKj6rAlQQy11gJMUe'
TW_API_SECRET_KEY = '04ry6xwn700PhENHKXdem13dN5bERNH0T1vBIIbMkRpiKyUH4N'
TW_ACCESS_TOKEN = '4872760203-qbVfsijOOnYX2g55q71NbWeULjyIpsQ5y8lmSOY'
TW_ACCESS_TOKEN_SECRET = '2cKaYgh7JBiIL6NNMlywJFbyMGTJDYIQPz9iqBAiXT024'
auth = tweepy.OAuthHandler(TW_API_KEY, TW_API_SECRET_KEY)
auth.set_access_token(TW_ACCESS_TOKEN, TW_ACCESS_TOKEN_SECRET)
api = tweepy.API(auth)
from nltk.sentiment.vader import SentimentIntensityAnalyzer as SIA
sia = SIA()
from nltk.corpus import stopwords
from nltk.tokenize import word_tokenize, RegexpTokenizer
tokenizer = RegexpTokenizer(r'\w+')
stop_words = stopwords.words('english')
url = 'https://pro-api.coinmarketcap.com/v1/cryptocurrency/quotes/latest'
headers = {
    'Accepts':'application/json',
    'X-CMC_PRO_API_KEY':'7fe42f85-db35-4a8d-87f0-5ff02470ba9e'
}
session = Session()
session.headers.update(headers)
import mysql.connector

cryptoList = {
'bitcoin' :['BTC','1'],
'ethereum' :['ETH','1027'],
'monero' : ['XMR','328'],
'tezos' : ['XTZ', '2011'],
'pancakeswap' : ['CAKE', '7186'],
'ecash' : ['XEC', '10791'],
'algorand' : ['ALGO', '4030'],
#'dash' :['DASH','131'],
'tether' :['USDT','825'],
'solana' :['SOL','5426'],
'cardano' :['ADA','2010'],
'xrp' :['XRP','52'],
'polkadot' :['DOT','6636'],
'dogecoin' :['DOGE','74'],
'terra' :['LUNA','4172'],
#'avalanche' :['AVAX','5805'],
'litecoin' :['LTC','2'],
'chainlink' :['LINK','1975'],
'uniswap' :['UNI','7083'],
#'polygon' :['MATIC','3890'],
'tron' :['TRX','1958'],
#'cosmos' :['ATOM','3794'],
#'dai' :['DAI','2308'],
'decentraland' :['MANA','1966'],
'ravencoin' :['RVN','2577']
}

def  buscarCrypto(unaCrypto):
    unasNoticias = set()
    unasNoticias = unasNoticias.union(buscarTweets(unaCrypto))
    unasNoticias = unasNoticias.union(buscarReddits(unaCrypto))
    unasNoticias = unasNoticias.union(buscarEn(bingNewsStart,bingNewsEnd , unaCrypto))
    unasNoticias = unasNoticias.union(buscarEn(googleNewsStart,googleNewsEnd , unaCrypto))
    unasNoticias = unasNoticias.union(buscarEn(bingNewsStart,bingNewsEnd , '$' + unaCrypto[0]))
    unasNoticias = unasNoticias.union(buscarEn(googleNewsStart,googleNewsEnd ,  '$' + unaCrypto[0]))
    return unasNoticias

def traducirAIngles(unasNoticias):
    noticiasTaducidas = set()
    for unaNoticia in unasNoticias: 
        noticiaIngles = unaNoticia
        if translator.detect(unaNoticia) != 'en':
            noticiaIngles = translator.translate(unaNoticia).text
        noticiasTaducidas.add(noticiaIngles)
    return noticiasTaducidas
    
def buscarTweets(unaCrypto):
    status = api.rate_limit_status()
    misTweets = set()
    if status['resources']['search']['/search/tweets']['remaining']:
        someTweets = [status._json for status in tweepy.Cursor(api.search_tweets, q=unaCrypto, count=180, tweet_mode='extended', lang='en').items(180)]
        for aTweet in someTweets:
            misTweets.add(aTweet["full_text"])   
    return misTweets

def buscarReddits(unaCrypto):
    misReddits = set()
    for submission in reddit.subreddit(unaCrypto).new(limit=5):
        misReddits.add(submission.title)
        display.clear_output() 
    return misReddits
    
def procesarTexto(unasNoticias):
    tokens = []
    for unaNoticia in unasNoticias:
        toks = tokenizer.tokenize(unaNoticia)
        toks = [t.lower() for t in toks if t.lower() not in stop_words]
        tokens.extend(toks)
    return tokens    
 
def analizarSentimiento(unasNoticias):
    sentimientos = []
    resultados = {}
    for unaNoticia in unasNoticias:
        pol_score = sia.polarity_scores(unaNoticia)
        pol_score['noticia'] = unaNoticia
        sentimientos.append(pol_score)
    unaTabla =  sentimentToTable(sentimientos)
    positivas = 0
    negativas = 0
    neutras = 0
    compound = 0
    for sentimiento in sentimientos:
        compound += sentimiento['compound']
        if sentimiento['compound'] > 0.2:
            positivas+= 1
        elif sentimiento['compound'] <  -0.2:
            negativas+= 1
        else:
            neutras+= 1
    cantNoticias = len(sentimientos)
    resultados['cantidad noticias'] =  cantNoticias
    resultados['porcentaje positivo'] = positivas / cantNoticias * 100
    resultados['porcentaje negativo'] = negativas / cantNoticias * 100
    resultados['porcentaje neutro'] = neutras / cantNoticias * 100
    resultados['compound'] = compound / cantNoticias
    #resultados['sentimiento'] =  unaTabla.positividad.value_counts(normalize=True) * 100
    resultados['palabras positivas'] =  cantPalabrasEn(1, unaTabla)
    resultados['palabras negativas'] =  cantPalabrasEn(-1, unaTabla)
    return resultados

def  valorActualDe(unaCrypto):
    parameters = {
     'slug':unaCrypto,
     'convert':'USD'
    }
    response = session.get(url, params=parameters)
    return json.loads(response.text)['data'][cryptoList[unaCrypto][1]]['quote']['USD']['price']

def sentimientosDe(unasCryptos):
    lista = []
    for unaCrypto in unasCryptos:
        noticiasAux = buscarCrypto(unaCrypto)
        cryptoAux = { 'nombre' : unaCrypto, 'simbolo': cryptoList[unaCrypto][0], 'id': cryptoList[unaCrypto][1]}
        cryptoAux['valor'] =  valorActualDe(unaCrypto)
        cryptoAux = cryptoAux | analizarSentimiento(noticiasAux)
        lista.append(cryptoAux)
    return lista

def todosLosValores(unaLista):
    for elem in unaLista:
        valorActualDe(elem)
        print("\n")

def sentimentToTable(unosSentimientos):
    tabla = pd.DataFrame.from_records(unosSentimientos)
    tabla['positividad'] = 0
    tabla.loc[tabla['compound'] > 0.2, 'positividad'] = 1
    tabla.loc[tabla['compound'] < -0.2, 'positividad'] = -1
    return tabla

def cantPalabrasEn(positividadDeseada, unaTabla):
    lineas = list(unaTabla[unaTabla.positividad == positividadDeseada].noticia)
    tokens = procesarTexto(lineas)
    frecuencia = nltk.FreqDist(tokens)
    return frecuencia.most_common(20)

def buscarEn(engineStart, engineEnd, unaCrypto):
    headers = {
    "User-Agent":
    "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36 Edge/18.19582"
    }
    url =  'https://' + engineStart + '/search?q=' + unaCrypto + engineEnd
    html = requests.get(url, headers=headers)
    soup = BeautifulSoup(html.text, 'lxml')
    unasNoticias = set()
    for resultado in soup.select('.card-with-cluster'):    
        titulo = resultado.select_one('.title').text
        enlace = resultado.select_one('.title')['href']
        snippet = resultado.select_one('.snippet').text
        fuente = resultado.select_one('.source a').text
        fecha = resultado.select_one('#algocore span+ span').text
        unasNoticias.add(titulo) 
    return unasNoticias

def addToDB(unosResultados):
    cnx = mysql.connector.connect(user='root', database='nlp')
    cursor = cnx.cursor()   
    
    for unResultado in unosResultados:
        cursor.execute("SELECT lastvalue  FROM nlp.cryptodata WHERE crypto =  '" + unResultado['nombre'] + "'")
        lastValue = cursor.fetchall()[0][0]
        variation = (unResultado['valor'] - lastValue ) / lastValue * 100
        agregarNodo = "INSERT INTO " + unResultado['nombre'] +  " (valor, qnoticias, pos, neg, neu, compound,variacion) VALUES (%s, %s, %s, %s, %s, %s, %s)"
        dataNodo = (unResultado['valor'], unResultado['cantidad noticias'], unResultado['porcentaje positivo'], unResultado['porcentaje negativo'], unResultado['porcentaje neutro'], unResultado['compound'], variation)
        actualizarLastValue = "UPDATE cryptodata SET lastvalue = %s WHERE crypto = %s"
        newValue = (unResultado['valor'], unResultado['nombre'])
        cursor.execute(actualizarLastValue, newValue)
        cursor.execute(agregarNodo, dataNodo)
        cnx.commit()
   
    cursor.close()
    cnx.close()
    
def checkLastValue(unaCrypto):
    cnx = mysql.connector.connect(user='root', database='nlp')
    cursor = cnx.cursor()  
    cursor.execute("SELECT lastvalue  FROM nlp.cryptodata WHERE crypto =  '" + unaCrypto + "'")
    lastvalue = cursor.fetchall()
    cursor.close()
    cnx.close()
    return lastvalue[0][0]
