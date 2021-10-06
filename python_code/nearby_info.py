import urllib.request, urllib.parse, urllib.error
import json
import csv

# CREATE A CSV FILE WITH DATA FROM A URL WITH ALL THE NEARBY STATIONS, A RELATION IS CONSIDERED ONLY ONE TIME
with open('nearby_stations_info.csv','w',encoding='utf-8') as csvfile2:
    # csv header
    fieldnames = ['id1','id2']
    writer = csv.DictWriter(csvfile2,fieldnames=fieldnames, quoting=csv.QUOTE_NONNUMERIC)
    writer.writeheader() 

    # reading url with URL bicing info
    url = 'http://wservice.viabicing.cat/v2/stations'
    uh = urllib.request.urlopen(url)
    data = uh.read().decode()
    try:
        js3 = json.loads(data)
        js3=js3['stations']
    except:
        print('==== Error de recepció ====')
    # data selection and fullfill the csv file
    relations= []
    for station in js3:
        id1=station['id']
        nearlist=station['nearbyStations'].split(',')
        nearlist=[item.replace(' ','') for item in nearlist]
        
        for near in nearlist:
            relation1= id1+near
            relation2= near+id1           
            if relation1 in relations or relation2 in relations:
                print('this relation already exists')
            else:
                id2=near
                relations.append(relation1)
                relations.append(relation2)
                writer.writerow({'id1': int(id1), 'id2':int(id2)})
                