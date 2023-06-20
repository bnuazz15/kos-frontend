# Base image
FROM node:16-alpine

# #yarn install
# RUN npm install --global yarn

WORKDIR /app

COPY package.json yarn.lock ./

# Install dependencies
RUN yarn add --frozen-lockfile

# Copy source code
COPY . .

# Set the command to start the node server
CMD [ "yarn", "start" ]

# Expose the port the app runs in
EXPOSE 3000
