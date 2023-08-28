# syntax=docker/dockerfile:1.4

FROM node:20-bookworm-slim

WORKDIR /app

COPY . .

EXPOSE 3000

ENTRYPOINT ["node"]
CMD ["app.js"]