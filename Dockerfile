FROM node:9.6.1

RUN mkdir /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app/
RUN npm install

COPY . /usr/src/app

CMD ["npm","start"]


docker build -t theerawut/node-express .
docker run --name node-express -p 3000:3000 theerawut/node-express
