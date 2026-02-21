FROM ghcr.io/patrickbaldridge/node25:latest

WORKDIR /app

COPY package*.json ./
RUN npm ci --omit=dev

COPY src/ ./src/

EXPOSE 3000

CMD ["src/server.js"]
