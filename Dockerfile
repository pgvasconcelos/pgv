# Use a imagem base do Node.js
FROM node:14

# Crie o diretório de trabalho dentro do contêiner
WORKDIR /usr/src/app

# Copie o package.json e package-lock.json para instalar dependências
COPY package*.json ./

# Instale as dependências do Strapi
RUN npm install

# Copie todos os arquivos do diretório atual para o diretório de trabalho no contêiner
COPY . .

# Exponha a porta 1337, que é onde o Strapi será executado
EXPOSE 1337

# Comando padrão para iniciar o Strapi
CMD ["npm", "start"]