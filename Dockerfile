FROM node:15.13-alpine

WORKDIR /app

# copy the json file first
COPY ./my-app/package.json .

# install npm dependencies
RUN npm install


COPY ./my-app .


CMD ["npm", "run", "start" ]

