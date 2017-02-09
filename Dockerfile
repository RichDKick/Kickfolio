FROM node:6

# Create app directory
WORKDIR /var/app/project

# Install app dependencies
COPY package.json /var/app/project
RUN npm install
RUN cp -r node_modules/materialize-css/dist materialize

# Bundle app source
# COPY app /var/app/project/app

CMD [ "npm", "start" ]
