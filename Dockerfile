FROM node:19.6.0-alpine3.17

# RUN  addgroup app && adduser -S -G app app

# USER app

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

ENV API_URL https://api

EXPOSE 3000

# # Shell form
# # /bin/sh
# # cmd
# CMD npm start

# Exec form
CMD ["npm", "start"]

# ENTRYPOINT ["npm", "start"]

