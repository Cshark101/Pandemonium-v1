FROM node:20

WORKDIR /app

COPY package.json .
RUN npm install pm2 -g

COPY . .

EXPOSE 3000

CMD ["node","index.js" ]
