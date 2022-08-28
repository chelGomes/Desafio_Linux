#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd jose -m -s /bin/bash -p $(openssl passwd -crypt NovaSenha987) -G GRP_ADM
useradd mariana -m -s /bin/bash -p $(openssl passwd -crypt NovaSenha987) -G GRP_ADM
useradd miguel -m -s /bin/bash -p $(openssl passwd -crypt NovaSenha987) -G GRP_ADM

useradd ana -m -s /bin/bash -p $(openssl passwd -crypt NovaSenha987) -G GRP_VEN
useradd sonia -m -s /bin/bash -p $(openssl passwd -crypt NovaSenha987) -G GRP_VEN
useradd marcelo -m -s /bin/bash -p $(openssl passwd -crypt NovaSenha987) -G GRP_VEN

useradd camila -m -s /bin/bash -p $(openssl passwd -crypt NovaSenha987) -G GRP_SEC
useradd julia -m -s /bin/bash -p $(openssl passwd -crypt NovaSenha987) -G GRP_SEC
useradd rafael -m -s /bin/bash -p $(openssl passwd -crypt NovaSenha987) -G GRP_SEC

echo "Especificando permissões dos diretórios...."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim....."