echo "Digite o nome do usuario: " ; read USUARIO
echo "Digite o IP: " ; read IP

echo $USUARIO >> Arquivos/usuarios.txt
echo $IP >> Arquivos/ipslista.txt
