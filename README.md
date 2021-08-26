# Introdução 
Projeto criado para criação de banco RDS Aurora na AWS

# Setup do ambiente
Instale os seguintes itens em sua maquina:
1.	Instalar a versão v0.14.6 do terraform
2.	Instalar o AWS CLI

# Criando a base de dados
1. Abra o prompt de comando
2. Acesse a pasta raiz do projeto
3. Rode o comando: terraform init
4. Rode o comando para validar o terraform: terraform validate
5. Rode o comando para gerar o plano de execução: terraform plan -out="plan.tfout"
6. Rode o comando para aplicar o plano de execução: terraform apply plan.tfout
7. Rode o comando para remover o plano de execução: rm -rf plan.tfout

# Deletando a base de dados
1. Abra o prompt de comando
2. Acesse a pasta raiz do projeto
3. Rode o comando de exclusão: terraform destroy -auto-approve

TODO: Como esse projeto não externaliza o remote state, a exclusão só funcionara se o mesmo estiver localmente na pasta

# Contribuidores
- Willian da Silva