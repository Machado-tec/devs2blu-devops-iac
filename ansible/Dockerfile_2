# Usar a imagem oficial do Ubuntu como base
FROM ubuntu:latest

# Mantenedor (opcional)
LABEL maintainer="seu_email@example.com"

# Definir variáveis de ambiente para evitar prompts
ENV DEBIAN_FRONTEND=noninteractive

# Atualizar pacotes, instalar pré-requisitos e instalar o Ansible e o OpenSSH
RUN apt-get update && \
    apt-get install -y software-properties-common openssh-server && \
    add-apt-repository --yes ppa:ansible/ansible && \
    apt-get update && \
    apt-get install -y ansible

# Configuração do SSH
RUN echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config && \
    echo 'PasswordAuthentication no' >> /etc/ssh/sshd_config

# Limpar caches para reduzir o tamanho da imagem
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mkdir -p /run/sshd


# Expondo a porta 22 para o SSH
EXPOSE 22

# Comando padrão para iniciar o serviço SSH em segundo plano

ADD start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]







