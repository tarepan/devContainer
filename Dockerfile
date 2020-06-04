FROM node:12

WORKDIR /usr/src/app

COPY package*.json ./
RUN ["npm", "ci"]
# --production cannot be used because of build process

COPY . .

RUN ["npm", "run", "build"]

CMD [ "node", "build/index.js"]