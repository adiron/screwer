FROM node:lts-alpine

# Create app directory
WORKDIR /app

# Install app dependencies
COPY package*.json ./

# Install dependencies
RUN yarn install

# Bundle app source
COPY . .

# Run app
CMD [ "yarn", "start" ]
