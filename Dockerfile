FROM node:alpine

WORKDIR /app
COPY . .

RUN apk add vips-dev fftw-dev --update-cache --repository https://dl-3.alpinelinux.org/alpine/edge/testing/
RUN apk add --no-cache make gcc g++ python ffmpeg

RUN npm install

CMD [ "npm", "start" ]
