# Dockerfile 
# is the build instruction file 
# copy all the application files into the docker container
# install the dependencies
# open the port to access it the
# instruct to start the application

FROM node:latest
LABEL maintainer="piviveka7@gmail.com"
#RUN apk add --update nodejs nodejs-npm
WORKDIR /app
COPY . /app
ENV PORT=3000
RUN npm install  #dependencies

EXPOSE $PORT
ENTRYPOINT ["node", "app.js"]
