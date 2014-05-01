#!/bin/bash
PORT=8081
echo "ClearLogs Server listening on port $PORT"
while true; 
	do { 
		# sleep 1;
		echo -e 'HTTP/1.1 200 OK\r\n'; 
		echo "" > logs/SystemOut.log 
		echo "Logfile cleared!"
	} | nc -l $PORT; 
done
