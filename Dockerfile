FROM node:lts-alpine

WORKDIR /web-min

COPY package*.json ./
RUN npm install

CMD ["npm", "run", "start"]
