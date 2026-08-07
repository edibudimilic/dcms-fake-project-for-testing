FROM golang:1.22-alpine AS build
WORKDIR /src
COPY go.mod main.go ./
RUN CGO_ENABLED=0 go build -o /out/app .

FROM alpine:3.20
WORKDIR /app
COPY --from=build /out/app /app/app
EXPOSE 3000
CMD ["/app/app"]
