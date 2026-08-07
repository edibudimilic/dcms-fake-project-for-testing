FROM node:22-alpine AS build
WORKDIR /src
COPY package.json ./
COPY server.js ./
RUN mkdir -p /out && cp package.json server.js /out/

FROM node:22-alpine
WORKDIR /app
COPY --from=build /out/ ./
EXPOSE 3000
CMD ["npm", "start"]
