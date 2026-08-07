FROM node:22-alpine
WORKDIR /app
COPY package.json ./
COPY server.js ./
VOLUME /app
EXPOSE 3000
CMD ["npm", "start"]
