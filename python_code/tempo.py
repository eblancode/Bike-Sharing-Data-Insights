# -*- coding: utf-8 -*-

import urllib.request, urllib.parse, urllib.error
import json
import pymysql.cursors
import time


def escriu_a_mysql(bicing):
    # fem connexió
    # connecting
    connection = pymysql.connect(host='localhost',
                                user='homestead',
                                password='secret',
                                db='bicing',
                                charset='utf8mb4',
                                cursorclass=pymysql.cursors.DictCursor)

    try:
        with connection.cursor() as cursor:
            # definim plantilla ordre SQL
            # insert query to database
            sql = "INSERT INTO jsondata (bikes, name, idx, lat, timestamp, lng, id, free, number) "\
                " VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s)" 
            # executem SQL amb valors del camp "bicing"
            # run defined query
            cursor.execute(sql, (bicing["bikes"], bicing["name"],\
                bicing["idx"] , bicing["lat"], bicing["timestamp"], bicing["lng"], \
                bicing["id"], bicing["free"], bicing["number"] ))
         
        connection.commit()
        print("Desat: ",bicing["name"])
    
    except:
        print("Error mysql...")
        return False

    finally:
        connection.close()

    return True





# veure web per a més info
# click to see the provided data
url = 'http://api.citybik.es/bicing.json'


origen_web = urllib.request.urlopen(url)

last_str_json = ""


while True:
    # obtenim el darrer json de la web
    # get the latest .json
    str_json = origen_web.read().decode()

    # si l'anterior json llegit és igual a l'acabat de llegir, voldrà dir que ja és a la BDD
    # check whether the .json provided have been updated
    if last_str_json==str_json:
        # esperem un minut i reiniciem el loop
        time.sleep(60)
        continue

    # actualizem "last_str_json" per al proper loop
    # update data for the next loop
    last_str_json = str_json

    # iniciem desat a base de dades
    # updating the database
    try:
        current_dataset = json.loads(str_json)
    except:
        current_dataset = None


    if current_dataset != None:
        
        for element in current_dataset:
            escriu_a_mysql(element)

