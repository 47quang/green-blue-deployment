FROM node:14.8.0-alpine
RUN mkdir -p /app
WORKDIR /app
COPY package.json /app
RUN npm install
ADD . /app
EXPOSE 3000
CMD ["node", "index.js"]