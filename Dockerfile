FROM node:18-alpine

WORKDIR /src

COPY package.json .

# RUN yarn
# or
RUN npm install 

COPY . .

EXPOSE 5173/tcp

CMD [ "npm", "run", "dev" ]
# or
# CMD [ "npm", "start" ]