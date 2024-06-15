# Use a imagem base do Node.js com a versão desejada
FROM node:14

# Crie o diretório de trabalho
WORKDIR /usr/src/app

# Copie os arquivos de dependência e instale os pacotes
COPY package*.json ./
RUN npm install

# Copie o restante do código-fonte da aplicação
COPY . .

# Exponha a porta necessária pelo Strapi (geralmente 1337 por padrão)
EXPOSE 1337

# Comando para iniciar o Strapi
CMD ["npm", "run", "develop"]
