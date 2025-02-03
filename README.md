This is a simple docker file

The app can be build using the command docker buildx build .

macbookpro@Alex docker_knowledge % docker buildx build .
[+] Building 5.8s (11/11) FINISHED                                                                                                                                                                                                                     docker:desktop-linux
 => [internal] load build definition from Dockerfile                                                                                                                                                                                                                   0.0s
 => => transferring dockerfile: 693B                                                                                                                                                                                                                                   0.0s
 => [internal] load .dockerignore                                                                                                                                                                                                                                      0.0s
 => => transferring context: 2B                                                                                                                                                                                                                                        0.0s
 => [internal] load metadata for docker.io/library/node:16-alpine                                                                                                                                                                                                      0.5s
 => [1/6] FROM docker.io/library/node:16-alpine@sha256:a1f9d027912b58a7c75be7716c97cfbc6d3099f3a97ed84aa490be9dee20e787                                                                                                                                                0.0s
 => [internal] load build context                                                                                                                                                                                                                                      0.0s
 => => transferring context: 2.37kB                                                                                                                                                                                                                                    0.0s
 => CACHED [2/6] RUN addgroup -S myuser && adduser -S -G myuser myuser                                                                                                                                                                                                 0.0s
 => CACHED [3/6] WORKDIR /app                                                                                                                                                                                                                                          0.0s
 => [4/6] COPY package*.json ./                                                                                                                                                                                                                                        0.0s
 => [5/6] RUN npm install                                                                                                                                                                                                                                              5.0s
 => [6/6] COPY . .                                                                                                                                                                                                                                                     0.0s
 => exporting to image                                                                                                                                                                                                                                                 0.2s
 => => exporting layers                                                                                                                                                                                                                                                0.2s
 => => writing image sha256:0c66506cba11dd8a11edc8def733429f67937610c54b6de2ed139eeb9e5e45b4    

docker run -p 80:80 0c66506cba11 

macbookpro@Alex docker_knowledge % docker run -p 80:80 0c66506cba11 

> tiron-docker-app@1.0.0 start
> serve -s . -l 80

 INFO  Accepting connections at http://localhost:80
 HTTP  2/3/2025 10:01:52 PM 192.168.65.1 GET /
 HTTP  2/3/2025 10:01:52 PM 192.168.65.1 Returned 200 in 14 ms
 HTTP  2/3/2025 10:01:53 PM 192.168.65.1 GET /favicon.ico
 HTTP  2/3/2025 10:01:53 PM 192.168.65.1 Returned 200 in 4 ms
