### 1. Criar rede Docker

```bash
docker network create my-network
```

### 2. Construir a imagem Docker
```bash
docker build -t node-docker-test .
```

### 3. Rodar o container na rede
```bash
docker run --name app --network my-network -d node-docker-test
```
### 4. Executar o script de teste
```bash
docker exec app /test/test.sh
```
