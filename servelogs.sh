#!/bin/bash
PORT=8080
echo "ServeLogs Server listening on port $PORT"
while true; 
	do { 
		# sleep 1;
		echo -e 'HTTP/1.1 200 OK\r\n'; 
		cat top.html; 
		cat logs/SystemOut.log; 
		cat bottom.html; 
	} | nc -l $PORT; 
done
