FROM node:10-alpine
RUN mkdir -p /home/app && chown -R node:node /home/app
WORKDIR /home/app
COPY . .
EXPOSE 8085
RUN npm install express
CMD [ "node", "index.js" ]
