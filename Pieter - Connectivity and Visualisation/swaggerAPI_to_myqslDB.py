#Team Turntable Project Embedded System Design 2 - Labo June 2020
#
#Discription:
# 1. Python script executed every 1 minute: If time is changed, change "params = (('last', '5m'),)". Data from last x minutes MUST ALWAYS be longer than script execute interval!
# 2. Gets data in json format via cURL from SWAGGER (https://swagger.io/) API to extract from The Things Network DataStorage integration.
# 3. Puts data in mysql database if not already there
#

#cURL connection
import requests

#Mysql database connection
import mysql.connector

#Json package
import json

#Time
import time

#Connect to database
mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  passwd="",
  database="TurnTable"
)

while True:
        #Reset Error msg
        error = ""        

        #Get cURL data, authenticate with TTN Access Key
        headers = {
                'Accept': 'application/json',
                'Authorization': 'key ttn-account-v2.8_ZTlnBHfyMRvde0elp7kz22EPNXqfUY42t_YeChwx8',
        }

        #Get data from past 5 minutes (xm), hour(xh), day (xd)
        params = (
                ('last', '5m'),
        )
        response = requests.get('https://lps-tut-r0585562.data.thethingsnetwork.org/api/v2/query', headers=headers, params=params)
        
	#Check if response is not empty
        if response.status_code <= 200:
                #Convert response to JSON
                data = response.json()

                #dumps the json object into an element
                json_str = json.dumps(data)

                #load the json to a string
                resp_json = json.loads(json_str)
                print("Convert data to json finished")
        else:
                #cURL status > 200
                error = "cURL response error/no data available"

	#Fill MYSQL database
        if error == "":
                #Iterate trough available data and keep count of data insertion/allready in database
                j = 0
                numInsert = 0
                numExist = 0
		
                for x in resp_json:
                        #Get json values
                        localdeviceId = resp_json[j]["device_id"]
                        localplayerId = resp_json[j]["playerId"]
                        localplayerScore = resp_json[j]["playerScore"]
                        localdateTime = resp_json[j]["time"]

                        #Put localdateTime in the correct MYSQL DATETIME form
                        localdateTime = localdateTime.replace('T', ' ')
                        localdateTime = localdateTime.replace('Z', '')
                        head, sep, tail = localdateTime.partition('.')
                        localdateTime = head
			
			#Check if datetime value already exists in database (only add score info once)
                        selcursor = mydb.cursor(buffered=True)
                        sql = """SELECT * FROM loradata WHERE dateTime = %s"""
                        selcursor.execute(sql, (localdateTime,))
                        record = selcursor.fetchone()

                        if selcursor.rowcount == 0:
                                #Add values to database
                                inscursor = mydb.cursor()
                                sql = "INSERT INTO loradata (device, playerId, playerScore, dateTime) VALUES (%s, %s, %s, %s)"
                                val = (localdeviceId, localplayerId, localplayerScore, localdateTime)
                                inscursor.execute(sql, val)

                                #Commit data to database
                                mydb.commit()

                                #Close insert cursor
                                inscursor.close()

                                #Increment total inserted
                                numInsert = numInsert + 1
                        else:
                                #Increment total allready exist
                                numExist = numExist + 1

			#Increment index
                        j = j + 1

			#Close select cursor
                        selcursor.close()
                else:
                        print("Fill mysql database finished")
                        print("->", numInsert, "records inserted")
                        print("->", numExist, "records allready exist")

        #Print Error message
        print (error)
        #Wait to execute again
        time.sleep(60)
