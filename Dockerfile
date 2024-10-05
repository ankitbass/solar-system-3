FROM node:18-alpine3.17  'install nodejs alpine image'

WORKDIR /usr/app         'within this image, we are going to create a work directory'

COPY package*.json /usr/app/   'copy the package.json, copy package-lock.json to user/app'

RUN npm install                'run npm install'
 
COPY . .                         'copy all the remaining file'

ENV MONGO_URI=uriPlaceholder          'expose env var'
ENV MONGO_USERNAME=usernamePlaceholder
ENV MONGO_PASSWORD=passwordPlaceholder

EXPOSE 3000                    'expose the application to port 3000'

CMD [ "npm", "start" ]         'start the application'  