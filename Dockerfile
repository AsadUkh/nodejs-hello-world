## Getting the Node base image
FROM node:14

## Getting user argumentss passed!
ARG PORT

## Working directory where all the code will be copied
WORKDIR app

## COPYING PACKAGE.JSON
COPY . .
#COPY package*.JSON .

## RUN npm install to install the dependencies in package.json file
RUN npm install

## COPY code to working directory where first dot idicate the source dir and second dot indicates the cind

## EXPOSE app to the port your application is bind to
EXPOSE $PORT

## START YOUR APP
CMD ["node", "index.js"]