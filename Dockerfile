FROM alpine:3.20
WORKDIR /app
COPY crash.sh ./
EXPOSE 3000
CMD ["/bin/sh","/app/crash.sh"]
