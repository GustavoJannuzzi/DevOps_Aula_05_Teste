# Usando a imagem oficial do Node.js baseada no Alpine
FROM node:alpine

# Criar e definir o diretório de trabalho
WORKDIR /app

# Copiar os arquivos de código-fonte para o diretório de trabalho
COPY server.js package.json ./

# Instalar dependências do Node.js
RUN npm install express

# Expôr a porta do servidor
EXPOSE 3000

# Definir o comando para rodar o servidor Node.js
CMD ["node", "server.js"]
