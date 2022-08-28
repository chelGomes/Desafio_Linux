#!/bin/bash


echo "Criando usuários do sistema...."

useradd guest10 -c "Novo Usuário" -s /bin/bash -m -p $(openssl passwd -crypt NovaSenha987)
passwd guest10 -e

useradd guest11 -c "Novo Usuário" -s /bin/bash -m -p $(openssl passwd -crypt NovaSenha987)
passwd guest11 -e

useradd guest12 -c "Novo Usuário" -s /bin/bash -m -p $(openssl passwd -crypt NovaSenha987)
passwd guest12 -e

useradd guest13 -c "Novo Usuário" -s /bin/bash -m -p $(openssl passwd -crypt NovaSenha987)
passwd guest13 -e

echo "Finalizado!!"