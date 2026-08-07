FROM node:22-alpine
ARG BUILD_MARKER
RUN test -n "$BUILD_MARKER" || (echo "BUILD_MARKER build-arg is required" >&2; exit 1)
WORKDIR /app
COPY package.json ./
COPY server.js ./
ENV DCMS_FIXTURE_MARKER=$BUILD_MARKER
EXPOSE 3000
CMD ["npm", "start"]
