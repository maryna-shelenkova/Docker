FROM node:18-slim


WORKDIR /usr/src/app

COPY package.json ./

RUN npm install --only=production

COPY app.js ./

CMD ["npm", "start"]

# Сборка образа:
# docker build -t cowsay-app .
# Запуск контейнера:
# docker run --rm cowsay-app