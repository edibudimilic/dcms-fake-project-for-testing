FROM node:22-alpine AS build
WORKDIR /src
COPY package.json server.js ./

FROM node:22-alpine AS app
WORKDIR /app
COPY --from=build /src/server.js /src/package.json ./
EXPOSE 3000
CMD ["node", "server.js"]

# Trailing edge stage that stands on its own -- it does not COPY --from=app, so
# both `app` and `edge` are terminal stages and the D-055 resolver has a real choice.
FROM caddy:2-alpine AS edge
COPY Caddyfile /etc/caddy/Caddyfile
EXPOSE 80
