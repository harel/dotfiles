#!/bin/bash
# check and send ip address changes to an email
 
MYIP=$(curl -s https://api.ipify.org);
TIME=`date`;
EMAILS="test@example.com"
 
LASTIPFILE='/home/harel/bin/.last_ip_addr';
LASTIP=`cat ${LASTIPFILE}`;
 
if [[ ${MYIP} != ${LASTIP} ]]
then
        echo "Lemmy has a new IP = ${MYIP}"
        echo "sending email.."
        echo -e "Hello\n\nTimestamp = ${TIME}\nIP = ${MYIP}\n\nBye" | \
                /usr/bin/mail -s "[INFO] New IP" $EMAILS;
        echo ${MYIP} > ${LASTIPFILE};
else
        echo "no IP change!"
fi
