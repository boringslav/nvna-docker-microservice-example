FROM node:18

# Create the app directory
WORKDIR /src

# Install app dependencies
COPY package*.json ./
RUN npm install

# Bundle app source
COPY . .

# Expose the port on which the application is running
EXPOSE 8080

# Run the application
CMD ["nodemon", "index.js"]