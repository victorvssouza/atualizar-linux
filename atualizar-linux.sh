#!/bin/bash

# Exibe uma mensagem informando o início do processo de atualização
echo "Iniciando a verificação e atualização do sistema..."

# Atualiza a lista de pacotes disponíveis
sudo apt update

# Verifica se há atualizações pendentes
echo "Verificando se há atualizações disponíveis..."
sudo apt upgrade -y

# Atualiza os pacotes de distribuição, se houver
echo "Atualizando pacotes da distribuição..."
sudo apt dist-upgrade -y

# Limpeza de pacotes desnecessários
echo "Removendo pacotes desnecessários..."
sudo apt autoremove -y

# Limpando pacotes de cache
echo "Limpando o cache de pacotes..."
sudo apt clean

# Exibe uma mensagem de conclusão
echo "O sistema foi atualizado com sucesso!"
