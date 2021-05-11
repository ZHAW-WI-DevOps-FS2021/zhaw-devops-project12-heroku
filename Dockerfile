FROM node:14

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./

# Install
RUN npm install

COPY . .

# Docker Run Command
EXPOSE 8080
CMD [ "node", "server.js" ]