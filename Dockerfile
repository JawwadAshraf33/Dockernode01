# base image
FROM node:alpine

# working directory
WORKDIR /usr/app

# moving from current to container
# instll dependencies when there is change in dependency
# if there is change in packagejson then copy else move to next step
COPY ./package.json ./
RUN npm install
COPY ./ ./


# execute this command
CMD [ "npm","start" ]