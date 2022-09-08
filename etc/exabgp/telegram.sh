## nano /opt/andrisoft/bin/telegram.sh
## curl -s --max-time 10 -d "chat_id=-1001533138922&disable_web_page_preview=1&text=WANGUARD: Ataque detectado contra o prefixo TESTE" https://api.telegram.org/bot747889846:AAEbNzmHVU7pEl1Gp3Y3j0VvoI7g4Sot7Kc/sendMessage > /dev/null

#!/usr/bin/env bash



#/opt/andrisoft/bin/telegram.sh {prefix} {decoder} {anomaly_id} {sensor} {value_prefix} {unit}

USERID="-1001533138922"
KEY="747889846:AAEbNzmHVU7pEl1Gp3Y3j0VvoI7g4Sot7Kc"
TIMEOUT="10"
URL="https://api.telegram.org/bot$KEY/sendMessage"
PREFIX=$1
VECTOR=$2
ANOMALYID=$3
SENSOR=$4
ATACKPEAK=$5
UNITATACKPEAK=$6


# EXEMPLOD DE MENSAGEM ENVIADA
#O Wanguard detectou anomalias de ataque com os seguintes detalhes:
#Sensor: SENSOR
#Destino: PREFIX
#Vetor: VECTOR
#Pico do ataque: ATACKPEAK UNIT
#ID da Anomalia: ANOMALYID

#------
#foi usado o site urlencoder.io


cat | curl -s --max-time $TIMEOUT -d "chat_id=$USERID&disable_web_page_preview=1&text=O%20Wanguard%20detectou%20anomalias%20de%20ataque%20com%20os%20seguintes%20detalhes%3A%0ASensor%3A%20$SE$

sleep 3

exit
