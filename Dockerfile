FROM node:22

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

ENV PORT=9000
EXPOSE 9000

CMD ["npm", "start"]
#Diferente de 'RUN npm install' que utilizamos acima
#RUN ocorre quando Docker está montando a Imagem
#CMD é utilizado para iniciar o Conteiner