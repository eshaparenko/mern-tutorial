FROM node
WORKDIR /app
COPY ./package.json ./package.json
COPY ./.env ./.env
COPY ./backend ./backend

RUN npm install 
EXPOSE 5000
CMD ["npm","start"]