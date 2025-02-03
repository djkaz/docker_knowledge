This is a simple docker file
docker run -p 80:80 0c66506cba11 

macbookpro@Alex docker_knowledge % docker run -p 80:80 0c66506cba11 

> tiron-docker-app@1.0.0 start
> serve -s . -l 80

 INFO  Accepting connections at http://localhost:80
 HTTP  2/3/2025 10:01:52 PM 192.168.65.1 GET /
 HTTP  2/3/2025 10:01:52 PM 192.168.65.1 Returned 200 in 14 ms
 HTTP  2/3/2025 10:01:53 PM 192.168.65.1 GET /favicon.ico
 HTTP  2/3/2025 10:01:53 PM 192.168.65.1 Returned 200 in 4 ms
