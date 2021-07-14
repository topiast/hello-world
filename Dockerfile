FROM node:10.19.0

WORKDIR /

COPY package*.json ./

RUN npm install --production

COPY . .

ENV PORT=3000

EXPOSE 3000

CMD ["npm", "start"]