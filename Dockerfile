FROM hashicorp/terraform:light

RUN if type "terraform" > /dev/null; then echo "Terraform found"; else echo "Terraform not found"; fi
