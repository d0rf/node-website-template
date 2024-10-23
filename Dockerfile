FROM node:alpine

WORKDIR /usr/src/app
#WORKDIR /app

#COPY package.json .
COPY package*.json ./

RUN npm install
COPY . .

RUN npm run watchify &

# Exposer le port 80 pour Nginx
EXPOSE 3000

CMD ["npm", "start"]
