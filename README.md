Arquitetura de Microsserviços: Padrão Saga Orquestrado

Este projeto demonstra a implementação de uma arquitetura de microsserviços utilizando o padrão Saga Orquestrado, empregando tecnologias modernas como Java 17, Spring Boot 3, Apache Kafka, PostgreSQL, MongoDB, Docker e Docker Compose.

✨ Tecnologias Utilizadas

Java 17 (Amazon Corretto)

Spring Boot 3

Apache Kafka (Redpanda Kafka)

PostgreSQL

MongoDB

Docker & Docker Compose

🔧 Conceitos e Abordagens

Este projeto aborda os seguintes conceitos:

Tratamento de transações distribuídas em microsserviços.

Implementação do Padrão Saga Orquestrado utilizando um orquestrador central.

Arquitetura orientada a eventos com Apache Kafka.

Utilização de MongoDB e PostgreSQL em um cenário de microsserviços.

Boas práticas para implementação de padrões arquiteturais.

Implementação bônus do Padrão Saga Coreografado.

🛠️ Como Executar o Projeto

1. Clone o Repositório

 git clone https://github.com/fernandodominguespai/Arquitetura-de-Microservicos-Kafka-orquestrado.git

2. Execute o Build (Este passo já sobe os containers e os microsserviços)

 python build.py

 docker-compose up -d

5. Testando o Kafka (Redpanda Kafka)

Acesse a interface web do Redpanda Kafka para testar e monitorar mensagens:
http://localhost:8081/

Verifique se o Kafka está funcionando corretamente:

 docker exec -it kafka bash
 kafka-topics.sh --list --bootstrap-server localhost:9092

📚 Estrutura do Projeto

Arquitetura-de-Microservicos-Kafka-orquestrado/
├── saga-orchestrator/         # Orquestrador da Saga
├── service-order/             # Microsserviço de pedidos
├── service-payment/           # Microsserviço de pagamentos
├── service-inventory/         # Microsserviço de estoque
├── build.py                   # Script para build do projeto
├── docker-compose.yml         # Configuração dos containers
└── README.md                  # Documentação do projeto

⚙️ Contribuição

Sinta-se à vontade para contribuir com melhorias e novas funcionalidades.

Fork o repositório

Crie uma branch para sua modificação: git checkout -b minha-mudanca

Commit suas alterações: git commit -m 'Minha Mudança'

Envie para o repositório remoto: git push origin minha-mudanca

Abra um Pull Request
