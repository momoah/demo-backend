FROM registry.access.redhat.com/ubi8/nodejs-18:latest

WORKDIR /usr/src/app

COPY --chown=1001:1001 package*.json ./
RUN cd /usr/src/app; \
    npm install --save

COPY --chown=1001:1001  . .

EXPOSE 3000

CMD ["node", "server.js"]
