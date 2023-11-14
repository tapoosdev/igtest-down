FROM node:slim
WORKDIR /app
COPY . .
RUN npm install
# RUN npm ci --only=production
COPY . .
EXPOSE 32780
RUN npm run build
CMD [ "node", "index.js" ]
