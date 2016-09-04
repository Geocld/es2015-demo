FROM node:onbuild

RUN ./node_modules/.bin/gulp

RUN npm install pm2 -g

EXPOSE 80

CMD ./node_modules/.bin/pm2 start dist/app.js --name ES2015-In-Action --no-daemon