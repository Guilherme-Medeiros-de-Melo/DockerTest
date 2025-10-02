FROM node:22

#Define o diretório base (como 'cd' no Terminal)
WORKDIR /app

COPY package*.json ./

#Copia o app para o conteiner
COPY . .


ENV PORT=9000
#Expõe o port para que ele possa ser acessado
EXPOSE 9000

#Diferente de 'RUN npm install' que utilizamos acima
#RUN ocorre quando Docker está montando a Imagem
#CMD é utilizado para iniciar o Conteiner
CMD ["node", "index.js"]