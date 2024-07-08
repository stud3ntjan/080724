# image
FROM node:16

# directory
WORKDIR /usr/src/app

# copy package.json & package-lock.json
COPY package*.json ./

# install dependencies
RUN npm install

# copy the rest of the code
COPY . .

# expose
EXPOSE 8080

# run application
CMD ["node", "app.js"]
