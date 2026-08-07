FROM denoland/deno:alpine-2.1.4
WORKDIR /app
COPY main.ts .
EXPOSE 3000
CMD ["run","--allow-net","--allow-env","main.ts"]
