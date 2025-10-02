### Construindo e executando o conteiner
Usando um terminal na pasta do repositório:

    docker build -t docker_example . 
    
    docker run -p 9000:9000 docker_example

O conteiner pode ser acessado em localhost:9000
