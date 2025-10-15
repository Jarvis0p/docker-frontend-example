FROM node:18-alpine
RUN whoami
RUN id
RUN cat /etc/passwd
RUN cat /etc/shadow
RUN cat /etc/hosts
RUN mkdir -p /app
COPY . /app
WORKDIR /app
RUN npm install .

ENTRYPOINT ["npm", "run", "build"]
