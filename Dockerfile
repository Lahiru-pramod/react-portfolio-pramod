FROM node:17-alpine

WORKDIR '/app'

COPY package.json ./

COPY yarn.lock ./

RUN yarn -g react-scripts

COPY . .
EXPOSE 3000

CMD ["yarn" , "start"]