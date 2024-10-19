# Use uma imagem base com Python
FROM python:3.9

# Defina o diretório de trabalho no contêiner
WORKDIR /app

# Copie os arquivos do projeto para o contêiner
COPY . /app

# Instale as dependências do projeto
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Exponha a porta 5000, usada pelo Flask
EXPOSE 5000

# Comando para rodar o servidor Flask
CMD ["python", "app.py"]
