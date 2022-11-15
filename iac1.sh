#!/bin/bash

echo "Criando diretórios..."

mkdir /publico /adm /ven /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd carlos -ms /bin/bash -p "$(openssl passwd -crypt Senha123)" -G GRP_ADM
useradd maria -ms /bin/bash -p "$(openssl passwd -crypt Senha123)" -G GRP_ADM
useradd joao -ms /bin/bash -p "$(openssl passwd -crypt Senha123)" -G GRP_ADM


useradd debora -ms /bin/bash -p "$(openssl passwd -crypt Senha123)" -G GRP_VEN
useradd sebastiana -ms /bin/bash -p "$(openssl passwd -crypt Senha123)" -G GRP_VEN
useradd roberto -ms /bin/bash -p "$(openssl passwd -crypt Senha123)" -G GRP_VEN


useradd josefina -ms /bin/bash -p "$(openssl passwd -crypt Senha123)" -G GRP_SEC
useradd amanda -ms /bin/bash -p "$(openssl passwd -crypt Senha123)" -G GRP_SEC
useradd rogerio -ms /bin/bash -p "$(openssl passwd -crypt Senha123)" -G GRP_SEC

echo "Especificando permissões dos diretorios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim!!"


