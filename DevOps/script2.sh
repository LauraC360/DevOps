#!/bin/bash 

# Run the command 
while true; do
    echo -e "HTTP/1.1 200 OK\r\n\r\n<body>FiiPractic <b>2024</b></body>\r\n\r\n" | nc -l 8080
done
