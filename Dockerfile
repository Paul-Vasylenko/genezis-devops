# current LTS version of node
FROM node:18

# add working directory
WORKDIR /usr/src/app
# defualt user node
RUN chown node:node ./
USER node

# default env = production
ARG NODE_ENV=production
ENV NODE_ENV $NODE_ENV

# copy, use cache
COPY package*.json ./
RUN npm ci && npm cache clean --force

COPY . ./src

EXPOSE 4000

CMD ["node", "./src/index.js"]