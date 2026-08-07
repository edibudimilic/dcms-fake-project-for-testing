FROM node:22-alpine AS build
WORKDIR /src
COPY package.json server.js ./

FROM gcr.io/distroless/nodejs22-debian12
WORKDIR /app
COPY --from=build /src/server.js ./
COPY --from=build /src/package.json ./
EXPOSE 3000
CMD ["server.js"]
