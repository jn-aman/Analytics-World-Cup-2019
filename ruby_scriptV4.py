
# coding: utf-8

# In[20]:


import pandas as pd
import numpy as np
import mysql.connector as mysql
db = mysql.connect(
    host = "localhost",
    user = "root",
    passwd = "",
    database = "SopraSteria"
)
cursor = db.cursor()


query = "select id from twitter ORDER BY id DESC LIMIT 1;"

## getting records from the table
cursor.execute(query)

## fetching all records from the 'cursor' object
records = cursor.fetchall()

last_id=records[0][0]
print(last_id)


# In[21]:


import tweepy
import json
import MySQLdb 
from dateutil import parser
import time

WORDS = [ "world cup","cricket india","cricket pakistan" ," cricket sri lanka","cricket england","cricket afganistan",
         "cricket australia","cricket bangladesh","cricket new zealand","cricket south africa","cricket west indies"
        ,"ICC","BCCI","Kholi","Dhoni","Virat","Virat Kohli", "Rohit Sharma", "Shikhar Dhawan", "MS Dhoni", 
         "Kedar Jadhav", "Hardik Pandya", "Bhuvneshwar Kumar", "Kuldeep Yadav", "Yuzvendra Chahal", "Jasprit Bumrah",
         "Mohammed Shami", "Vijay Shankar", "Dinesh Karthik", "KL Rahul", "Ravindra Jadeja", "Shoaib Malik",
         "Mohammad Hafeez", "Sarfaraz Ahmed" , "Wahab Riaz", "Mohammad Amir", "Haris Sohail", "Babar Azam", 
         "Imam-ul-Haq", "Asif Ali", "Imad Wasim","Fakhar Zaman","Eoin Morgan","Jason Roy", "Jonny Bairstow", 
         "James Vince", "Jos Buttler" , "Ben Stokes", "Moeen Ali", "Chris Woakes", "Liam Dawson", "Tom Curran", 
         "Liam Plunkett","Gulbadin Naib" , "Mohammad Shahzad" , "Noor Ali Zadran", "Hazratullah Zazai", "Rahmat Shah",
         "Asghar Afghan", "Hashmatullah Shahidi", "Najibullah Zadran", "Samiullah Shinwari", "Mohammad Nabi",
         "Aaron Finch", "David Warner", "Usman Khawaja", "Steven Smith", "Shaun Marsh", "Marcus Stoinis", 
         "Alex Carey" , "Nathan Coulter-Nile", "Jason Behrendorff", "Kane Richardson", "Mashrafe Mortaza" , 
         "Tamim Iqbal", "Liton Das","Soumya Sarkar", "Mushfiqur Rahim", "Mahmudullah Riyad", "Shakib Al Hasan", 
         "Mohammad Mithun" , "Sabbir Rahman","Kane Williamson", "Tom Blundell" , "Trent Boult", "Colin de Grandhomme",
         "Lockie Ferguson"," Martin Guptill", "Matt Henry", "Tom Latham", "Colin Munro","Faf du Plessis",
         "Quinton de Kock", "David Miller", "JP Duminy", "Hashim Amla", "Aiden Markram", "Rassie van der Dussen", 
         "Dwaine Pretorius", "Andile Phehlukwayo","Dimuth Karunaratne", "Angelo Mathews", "Thisara Perera", 
         "Kusal Perera","Dhananjaya de Silva", "Kusal Mendis", "Isuru Udana", "Milinda Siriwardana",
         "Avishka Fernando"]

CONSUMER_KEY = "eGLtUPqEDKrBWkkkPjnr2lEjb"
CONSUMER_SECRET = "ooxJXCB9D944rUzFQ9txPH4gEPlBlU0abGwSuo8WWlyPCPeuzg"
ACCESS_TOKEN = "140283345-LFqLOC9YjgLQ3YqJI9yuh0qEFUwwl4wIOQpreTJl"
ACCESS_TOKEN_SECRET = "L708vY9b30qPXs4Ftu8maPuZHHG9asNcfozAmyqLe3F3h"

HOST = "localhost"
USER = "root"
PASSWD = ""
DATABASE = "SopraSteria"

# This function takes the 'created_at', 'text', 'screen_name' and 'tweet_id' and stores it
# into a MySQL database
def store_data(created_at, text, screen_name, tweet_id,location):
    db=MySQLdb.connect(host=HOST, user=USER, passwd=PASSWD, db=DATABASE, charset="utf8")
    cursor = db.cursor()
    insert_query = "INSERT INTO twitter (tweet_id, screen_name, created_at,location, text) VALUES (%s, %s,%s, %s, %s)"
    cursor.execute(insert_query, (tweet_id, screen_name, created_at,location,text))
    db.commit()
    cursor.close()
    db.close()
    return

class StreamListener(tweepy.StreamListener):    
    #This is a class provided by tweepy to access the Twitter Streaming API. 

    def on_connect(self):
        # Called initially to connect to the Streaming API
        print("You are now connected to the streaming API.")
 
    def on_error(self, status_code):
        # On error - if an error occurs, display the error / status code
        print('An Error has occured: ' + repr(status_code))
        return False
 
    def on_data(self, data):
        if (time.time() - start_time) < limit:
        #This is the meat of the script...it connects to your mongoDB and stores the tweet
            try:
               # Decode the JSON from Twitter
                datajson = json.loads(data)

                #grab the wanted data from the Tweet
                text = datajson['text']
                screen_name = datajson['user']['screen_name']
                location=datajson['user']["location"]
                tweet_id = datajson['id']
                created_at = parser.parse(datajson['created_at']) 

                #print out a message to the screen that we have collected a tweet
                print("Tweet collected at " + str(created_at))

                #insert the data into the MySQL database
                store_data(created_at, text, screen_name, tweet_id,location)

            except Exception as e:
                print(e)
            return True
        else:
            return False;
            
start_time = time.time()
limit = 10
auth = tweepy.OAuthHandler(CONSUMER_KEY, CONSUMER_SECRET)
auth.set_access_token(ACCESS_TOKEN, ACCESS_TOKEN_SECRET)
#Set up the listener. The 'wait_on_rate_limit=True' is needed to help with Twitter API rate limiting.
listener = StreamListener(api=tweepy.API(wait_on_rate_limit=True)) 
streamer = tweepy.Stream(auth=auth, listener=listener)
print("Tracking: " + str(WORDS))
streamer.filter(track=WORDS)


# In[22]:


vocab=["india","pakistan" ,"sri lanka","england","afganistan","australia","bangladesh","new zealand","south africa","west indies"]


# In[23]:


query = "SELECT * FROM twitter where id > "+str(last_id)
query


# In[24]:


import pandas as pd
import numpy as np
import mysql.connector as mysql
db = mysql.connect(
    host = "localhost",
    user = "root",
    passwd = "",
    database = "SopraSteria"
)
cursor = db.cursor()


query = "SELECT * FROM twitter where id > "+str(last_id)

## getting records from the table
cursor.execute(query)

## fetching all records from the 'cursor' object
records = cursor.fetchall()

# Showing the data
# for record in records:
#     print(record)


# In[25]:


import re

def urlify2(s):

    # Remove all non-word characters (everything except numbers and letters)
    s = re.sub(r"[^\w\s]", '', s)
    s = s.replace('\n','')
    s = s.replace('rt','')
    s = s.replace('RT','')

    # Replace all runs of whitespace with a single dash
#     s = re.sub(r"\s+", '_', s)
    return s

def urlify(s):

    # Remove all non-word characters (everything except numbers and letters)
    s = re.sub(r"[^\w\s]", '', s)

    # Replace all runs of whitespace with a single dash
    s = re.sub(r"\s+", '_', s)

    return s


# In[26]:


vocab_l=[urlify(i) for i in vocab]
vocab_l
vocab_l.append("tweet")
vocab_l


# In[27]:


counts_all=dict()
def word_count(str1):
    
    counts = dict.fromkeys(vocab_l)
    
    words = vocab

    for i in range(len(vocab)):
            counts[vocab_l[i]]=str1.lower().count(vocab[i])
            counts["tweet"]=urlify2(str1)

    return counts


# In[28]:


for i in range(len(records)):
    counts_all[i]=word_count(records[i][5])
df=pd.DataFrame.from_dict(counts_all, orient='index',columns=counts_all[0].keys())
df.head()
df=df.drop_duplicates()
    
from sqlalchemy import create_engine
database_username = 'root'
database_password = ''
database_ip       = 'localhost'
database_name     = 'SopraSteria'
database_connection = create_engine('mysql+mysqlconnector://{0}:{1}@{2}/{3}'.
                                               format(database_username, database_password, 
                                                      database_ip, database_name))
df.to_sql('country', con=database_connection, if_exists='append',chunksize=1000,index=False)


# In[29]:


from textblob import TextBlob
import MySQLdb 
for i in range(len(records)):
    db=MySQLdb.connect(host="localhost", user="root", passwd="", db="SopraSteria", charset="utf8")
    cursor = db.cursor()
    blob = TextBlob(records[i][5])
    if blob.sentiment[0]==0:
        senti="neutral"
    elif blob.sentiment[0]>0:
        senti="positive"
    else:
        senti="negative"
    
    insert_query = "INSERT INTO tweetsentiments (tweet, sentiment) VALUES (%s, %s)"
    cursor.execute(insert_query, (records[i][5], senti))
    db.commit()
    cursor.close()
    db.close()


# In[30]:


WORDS =["Dhoni","Virat", "Rohit Sharma", "Dhawan",
         "Jadhav", "Hardik Pandya", "Bhuvneshwar Kumar", "Kuldeep Yadav", "Yuzvendra Chahal", "Jasprit Bumrah",
         "Mohammed Shami", "Vijay Shankar", "Dinesh Karthik", "KL Rahul", "Ravindra Jadeja", "Shoaib Malik",
         "Mohammad Hafeez", "Sarfaraz Ahmed" , "Wahab Riaz", "Mohammad Amir", "Haris Sohail", "Babar Azam", 
         "Imam-ul-Haq", "Asif Ali", "Imad Wasim","Fakhar Zaman","Eoin Morgan","Jason Roy", "Jonny Bairstow", 
         "James Vince", "Jos Buttler" , "Ben Stokes", "Moeen Ali", "Chris Woakes", "Liam Dawson", "Tom Curran", 
         "Liam Plunkett","Gulbadin Naib" , "Mohammad Shahzad" , "Noor Ali Zadran", "Hazratullah Zazai", "Rahmat Shah",
         "Asghar Afghan", "Hashmatullah Shahidi", "Najibullah Zadran", "Samiullah Shinwari", "Mohammad Nabi",
         "Aaron Finch", "David Warner", "Usman Khawaja", "Steven Smith", "Shaun Marsh", "Marcus Stoinis", 
         "Alex Carey" , "Nathan Coulter-Nile", "Jason Behrendorff", "Kane Richardson", "Mashrafe Mortaza" , 
         "Tamim Iqbal", "Liton Das","Soumya Sarkar", "Mushfiqur Rahim", "Mahmudullah Riyad", "Shakib Al Hasan", 
         "Mohammad Mithun" , "Sabbir Rahman","Kane Williamson", "Tom Blundell" , "Trent Boult", "Colin de Grandhomme",
         "Lockie Ferguson"," Martin Guptill", "Matt Henry", "Tom Latham", "Colin Munro","Faf du Plessis",
         "Quinton de Kock", "David Miller", "JP Duminy", "Hashim Amla", "Aiden Markram", "Rassie van der Dussen", 
         "Dwaine Pretorius", "Andile Phehlukwayo","Dimuth Karunaratne", "Angelo Mathews", "Thisara Perera", 
         "Kusal Perera","Dhananjaya de Silva", "Kusal Mendis", "Isuru Udana", "Milinda Siriwardana",
         "Avishka Fernando","Jason Holder", "Evin Lewis", "Darren Bravo", "Chris Gayle", "Andre Russell", 
        "Carlos Brathwaite", "Nicholas Pooran", "Oshane Thomas", "Shai Hope" , "Shimron Hetmyer"]


# In[31]:


import re

def urlify2(s):

    # Remove all non-word characters (everything except numbers and letters)
    s = re.sub(r"[^\w\s]", '', s)
    s = s.replace('\n','')
    s = s.replace('rt','')
    s = s.replace('RT','')

    # Replace all runs of whitespace with a single dash
#     s = re.sub(r"\s+", '_', s)
    return s

def urlify(s):

    # Remove all non-word characters (everything except numbers and letters)
    s = re.sub(r"[^\w\s]", '', s)

    # Replace all runs of whitespace with a single dash
    s = re.sub(r"\s+", '_', s)

    return s


# In[32]:


vocab=["india","pakistan" ,"sri lanka","england","afganistan","australia","bangladesh","new zealand","south africa","west indies"]
vocab_l=[urlify(i) for i in vocab]


# In[33]:


word=[urlify(i).lower() for i in WORDS]
WORDS=[i.lower() for i in WORDS]
word.append("tweet")


# In[34]:


def word_count(str1):
    counts = dict.fromkeys(word)

    for i in range(len(WORDS)):
        
            counts[word[i]]=str1.lower().count(WORDS[i])
            counts["tweet"]=urlify2(str1)

    return counts


# In[35]:


import collections
counts_all = collections.defaultdict(dict)
for w in vocab_l:
    counts_all[w]={}
for j in range(len(vocab)):
    for i in range(len(records)):
        if records[i][5].lower().count(vocab[j]) or (records[i][4] is not None and records[i][4].lower().count(vocab[j])):
            counts_all[vocab_l[j]][i]=word_count(records[i][5])
        
    
counts_all=dict(counts_all)


# In[36]:


import pandas as pd
dataframe_collection = {} 
for county in vocab_l:
    dataframe_collection[county] = pd.DataFrame.from_dict(counts_all[county], orient='index',columns=word)


# In[37]:


from sqlalchemy import create_engine
database_username = 'root'
database_password = ''
database_ip       = 'localhost'
database_name     = 'SopraSteria'
database_connection = create_engine('mysql+mysqlconnector://{0}:{1}@{2}/{3}'.
                                               format(database_username, database_password, 
                                                      database_ip, database_name))
for county in vocab_l:
    dataframe_collection[county].to_sql(name=county, con=database_connection, if_exists='append',index=False,chunksize=500)

print("DONEEEEEE");
