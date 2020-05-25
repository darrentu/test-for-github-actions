FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
    curl

RUN apt-get update && ACCEPT_EULA=Y apt-get install -y \
    jq \
    wget

RUN TF_VERSION=$(curl -s https://checkpoint-api.hashicorp.com/v1/check/terraform | jq -r -M ".current_version") \
  && wget -O terraform.zip https://releases.hashicorp.com/terraform/${TF_VERSION}/terraform_${TF_VERSION}_linux_amd64.zip

#RUN if type "terraform" > /dev/null; then echo "Terraform found"; else echo "Terraform not found"; fi
