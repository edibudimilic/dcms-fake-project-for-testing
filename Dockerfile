# 1) build tooling
FROM node:22-alpine AS build
WORKDIR /src
COPY package.json server.js ./
RUN echo "built at $(date -u)" > /src/BUILDSTAMP

# 2) THE APPLICATION STAGE -- this is what DCMS must run
FROM node:22-alpine AS runtime
WORKDIR /app
COPY --from=build /src/server.js /src/package.json /src/BUILDSTAMP ./
EXPOSE 3000
CMD ["node", "server.js"]

# 3) a trailing non-app stage. A naive "last stage wins" build lands here and
#    serves caddy's default page (or nothing) instead of the app.
FROM caddy:2-alpine AS edge
COPY --from=runtime /app /srv
EXPOSE 80
CMD ["caddy", "file-server", "--root", "/srv", "--listen", ":80"]
