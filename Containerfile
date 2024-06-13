FROM registry.access.redhat.com/ubi8/nodejs-18:latest

WORKDIR /usr/src/app

COPY --chown=1001:1001 package*.json ./
RUN npm install

COPY --chown=1001:1001  . .

EXPOSE 3000

CMD ["node", "server.js"]
