FROM node:22-alpine
WORKDIR /app
COPY package.json ./
COPY server.js ./
RUN echo "about to fail on purpose" && this-command-does-not-exist --nope
EXPOSE 3000
CMD ["npm", "start"]
