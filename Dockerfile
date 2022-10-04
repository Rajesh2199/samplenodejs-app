FROM node:16

#CREATE A DIRECTORY TO HOLD THE APPLICATIN CODE
WORKDIR	/usr/src/app

#Install app dependencies
COPY package*.json ./
RUN npm install

#Copy application's source code inside docker image.
COPY . .

#Expose the port 
EXPOSE 8080

# Define the command to run our app
CMD ["node", "index.js"]
