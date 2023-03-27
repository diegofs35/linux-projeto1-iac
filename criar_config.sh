#!/bin/bash

echo "Criando os diretórios...."
mkdir /publico /adm /ven /sec
chmod 777 /publico
echo ""
echo "Criando os grupos/Alterando dir do grupo/Alterando permissões..."
groupadd GRP_ADM 
chown root:GRP_ADM /adm/ 
chmod 770 /adm/ 
groupadd GRP_VEN 
chown root:GRP_VEN /ven/ 
chmod 770 /ven/ 
groupadd GRP_SEC
chown root:GRP_SEC /sec/ 
chmod 770 /sec/ 
echo ""
echo "Criando usuários...."
useradd carlos -c "Carlos Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -g GRP_ADM 
passwd carlos -e
useradd maria -c "Maria Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -g GRP_ADM
passwd maria -e
useradd joao -c "João Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -g GRP_ADM
passwd joao -e
useradd debora -c "Débora Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -g GRP_VEN
passwd debora -e
useradd sebastiana -c "Sebastiana Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -g GRP_VEN
passwd sebastiana -e
useradd roberto -c "Roberto Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -g GRP_VEN
passwd roberto -e
useradd josefina -c "Josefina Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -g GRP_SEC
passwd josefina -e
useradd amanda -c "Amanda Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -g GRP_SEC
passwd amanda -e
useradd rogerio -c "Rogério Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -g GRP_SEC
passwd rogerio -e
