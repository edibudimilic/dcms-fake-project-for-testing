FROM alpine:3.20 AS build
WORKDIR /src
COPY src ./src
COPY build.sh ./
RUN sh build.sh

FROM nginx:1.27-alpine
COPY --from=build /src/dist /usr/share/nginx/html
EXPOSE 80
