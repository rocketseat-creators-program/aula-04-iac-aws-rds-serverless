# Introdução 
Projeto criado para criação de banco RDS Aurora na AWS

# Setup do ambiente
Instale os seguintes itens em sua maquina:
1.	Instalar a versão v0.14.6 do terraform
2.	Instalar o AWS CLI

# Execução Local

Nesta seção você vai conseguir ter o passo a passo para executar o artefato localmente com os comandos terraform

## Testando o terraform
1. Abra o prompt de comando
2. Acesse a pasta raiz do projeto
3. Rode o comando: terraform init \
        -backend=true \
        -backend-config="bucket=your_remote_state_bucket" \
        -backend-config="key=your_remote_state_bucket_file.tfstate" \
        -backend-config="region=your_remote_state_bucket_region"
4. Rode o comando para validar o terraform: terraform validate

## Criando a base de dados
1. Abra o prompt de comando
2. Acesse a pasta raiz do projeto
3. Rode o comando: terraform init \
        -backend=true \
        -backend-config="bucket=your_remote_state_bucket" \
        -backend-config="key=your_remote_state_bucket_file.tfstate" \
        -backend-config="region=your_remote_state_bucket_region"
4. Rode o comando para gerar o plano de execução: terraform plan -out="plan.tfout"
5. Rode o comando para aplicar o plano de execução: terraform apply plan.tfout
6. Rode o comando para remover o plano de execução: rm -rf plan.tfout

## Deletando a base de dados
1. Abra o prompt de comando
2. Acesse a pasta raiz do projeto
3. Rode o comando: terraform init \
        -backend=true \
        -backend-config="bucket=your_remote_state_bucket" \
        -backend-config="key=your_remote_state_bucket_file.tfstate" \
        -backend-config="region=your_remote_state_bucket_region"
4. Rode o comando de exclusão: terraform destroy -auto-approve

# Execução com Docker

Nesta seção você vai conseguir ter o passo a passo para executar o artefato localmente com Docker

## Testando
1. Abra o prompt de comando
2. Acesse a pasta raiz do projeto
3. Rode o comando: docker build -t test -f devops/iac/test/Dockerfile .
4. Rode o comando para validar o terraform: docker run \
	-e AWS_ACCESS_KEY_ID="your_access_key" \
	-e AWS_SECRET_ACCESS_KEY="your_secret_access_key" \
	-e AWS_REGION="your_region" \
	-e REMOTE_STATE_BUCKET="your_remote_state_bucket" \
	-e REMOTE_STATE_FILE="your_remote_state_bucket_file.tfstate" \
	-e REMOTE_STATE_AWS_REGION="your_remote_state_bucket_region" \
	-e ENV="dev" \
	-e ENV_VERSION="v1" \
	-e PRODUCT="rocketseat" \
	-e CREATED_BY="devops-tools" \
	-e OWNER="squad-rocketseat" \
	test

## Criando a base de dados
1. Abra o prompt de comando
2. Acesse a pasta raiz do projeto
3. Rode o comando: docker build -t deploy -f devops/iac/deploy/Dockerfile .
4. Rode o comando para validar o terraform: docker run \
	-e AWS_ACCESS_KEY_ID="your_access_key" \
	-e AWS_SECRET_ACCESS_KEY="your_secret_access_key" \
	-e AWS_REGION="your_region" \
	-e REMOTE_STATE_BUCKET="your_remote_state_bucket" \
	-e REMOTE_STATE_FILE="your_remote_state_bucket_file.tfstate" \
	-e REMOTE_STATE_AWS_REGION="your_remote_state_bucket_region" \
	-e ENV="dev" \
	-e ENV_VERSION="v1" \
	-e PRODUCT="rocketseat" \
	-e CREATED_BY="devops-tools" \
	-e OWNER="squad-rocketseat" \
	-e PROJECT="travels-backend" \
	-e ROLE="db" \
	-e ENGINE="aurora-postgresql" \
	-e ENGINE_VERSION="10.7" \
	-e DATABASE_NAME="your_database_name" \
	-e DATABASE_USERNAME="your_database_user" \
	-e BACKUP_RETENTION_PERIOD="5" \
	-e STORAGE_ENCRYPTED="true" \
	-e DELETION_PROTECTION="false" \
	-e ENGINE_MODE="serverless" \
	-e SKIP_FINAL_SNAPSHOT="true" \
	-e COPY_TAGS_TO_SNAPSHOT="true" \
	-e AUTO_PAUSE="true" \
	-e MAX_CAPACITY="8" \
	-e MIN_CAPACITY="2" \
	-e SECONDS_UNTIL_AUTO_PAUSE="300" \
	-e TIMEOUT_ACTION="ForceApplyCapacityChange" \
	deploy

## Destruindo a base de dados
1. Abra o prompt de comando
2. Acesse a pasta raiz do projeto
3. Rode o comando: docker build -t destroy -f devops/iac/destroy/Dockerfile .
4. Rode o comando para validar o terraform: docker run \
	-e AWS_ACCESS_KEY_ID="your_access_key" \
	-e AWS_SECRET_ACCESS_KEY="your_secret_access_key" \
	-e AWS_REGION="your_region" \
	-e REMOTE_STATE_BUCKET="your_remote_state_bucket" \
	-e REMOTE_STATE_FILE="your_remote_state_bucket_file.tfstate" \
	-e REMOTE_STATE_AWS_REGION="your_remote_state_bucket_region" \
	-e ENV="dev" \
	-e ENV_VERSION="v1" \
	-e PRODUCT="rocketseat" \
	-e CREATED_BY="devops-tools" \
	-e OWNER="squad-rocketseat" \
	-e PROJECT="travels-backend" \
	-e ROLE="db" \
	-e ENGINE="aurora-postgresql" \
	-e ENGINE_VERSION="10.7" \
	-e DATABASE_NAME="your_database_name" \
	-e DATABASE_USERNAME="your_database_user" \
	-e BACKUP_RETENTION_PERIOD="5" \
	-e STORAGE_ENCRYPTED="true" \
	-e DELETION_PROTECTION="false" \
	-e ENGINE_MODE="serverless" \
	-e SKIP_FINAL_SNAPSHOT="true" \
	-e COPY_TAGS_TO_SNAPSHOT="true" \
	-e AUTO_PAUSE="true" \
	-e MAX_CAPACITY="8" \
	-e MIN_CAPACITY="2" \
	-e SECONDS_UNTIL_AUTO_PAUSE="300" \
	-e TIMEOUT_ACTION="ForceApplyCapacityChange" \
	destroy

# Contribuidores
- Willian da Silva
