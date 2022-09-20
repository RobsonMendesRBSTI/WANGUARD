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
#caso necessário, use este site https://www.urlencoder.org/ para escrever o código mais rápido.


cat | curl -s --max-time $TIMEOUT -d "chat_id=$USERID&disable_web_page_preview=1&text=Sensor%3A%20$SENSOR%0AInterface%3A%20$INTERFACE%0AIP%3A%20$PREFIX%0AVetor%3A%20$VECTOR%0AAnomaliaID%3A%20$ANOMALYID%0APico%3A%20$UNITATACKPEAK" https://api.telegram.org/bot$KEY/sendMessage

sleep 3

exit
