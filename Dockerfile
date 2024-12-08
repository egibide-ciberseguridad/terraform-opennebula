ARG TERRAFORM_VERSION=latest

FROM hashicorp/terraform:${TERRAFORM_VERSION}

# Instalar los paquetes necesarios
RUN apk add --no-cache jq bash shadow nano && \
    chsh root --shell /bin/bash && \
    apk del shadow

# Habilitar el autocompletado de Terraform
RUN touch ~/.bashrc && \
    terraform -install-autocomplete

# Definir el directorio actual
WORKDIR /terraform

# Mostrar el usuario y el host en el prompt
ENV PS1='\u@\h:\w\$\040'

# Eliminar la llamada a Terraform de la imagen original
ENTRYPOINT []

CMD ["/bin/bash"]
