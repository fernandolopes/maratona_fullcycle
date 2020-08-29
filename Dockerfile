FROM node:13.12.0-alpine
WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

ARG NODE_ENV=development
ENV NODE_ENV=${NODE_ENV}

COPY package.json ./
RUN npm install 

COPY . ./

CMD ["npm", "start"]