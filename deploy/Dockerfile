FROM node:22-alpine
WORKDIR /app
COPY package.json ./
COPY server.js ./
EXPOSE 3000
CMD ["npm", "start"]
# second Dockerfile so DCMS must ask which one builds the app
