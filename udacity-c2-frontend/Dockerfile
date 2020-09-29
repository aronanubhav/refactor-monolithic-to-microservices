# Use NodeJS base image
FROM node:13

FROM beevelop/ionic AS ionic

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install

COPY . .
RUN ionic build

FROM nginx:alpine
COPY --from=ionic /usr/src/app/www /usr/share/nginx/html

# Bind the port that the image will run on
EXPOSE 8080

# Define the Docker image's behavior at runtime
CMD ["node", "server.js"]
