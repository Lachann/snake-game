FROM node:14

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

# Set environment variables for MongoDB connection
ENV DB_HOST=localhost
ENV DB_PORT=27017
ENV DB_NAME=snake_game
ENV DB_USER=user
ENV DB_PASS=password

COPY config.js .

EXPOSE 8080
CMD [ "node", "index.js" ]
