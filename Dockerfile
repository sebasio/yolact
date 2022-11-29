FROM node:9.4.0-alpine
COPY app.js .
COPY package.json .
EXPOSE 3000
RUN npm install &&\
    apk update &&\
	apk upgrade
CMD node app.js