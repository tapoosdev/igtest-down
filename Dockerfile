FROM node:10-alpine
RUN mkdir -p ./app && chown -R node:node ./app
WORKDIR /home/
COPY . .
EXPOSE 8085
RUN npm install express
CMD [ "node", "index.js" ]
