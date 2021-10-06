The SQL connexion needs to find a bicing schema on your MySQL environment. The station information file was taken on December 2017. 

tempo: the function "escriu_a_mysql()" takes as input every instance for the API on a single moment and store all the gathered information to the database.
The script makes sure that the information has aleady changed. 

station_info: takes all the static data from every station and stores it on a .csv file, ready to be imported to your SQL schema.

nearby_info: creates a .csv with every nearby relation between stations.



