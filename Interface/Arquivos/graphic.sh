# !/bin/bash
# GNUPLOT ficou dando erros
# HTOP e bem melhor e mais interativo porem n sabia se era ram em tempo real ou apenas uma linha
# Entao nao usei nenhum comando externo, qualquer coisa e so fazer como na foto e me avisa
# Q e facil colocar um loop para barra em tempo real..

ram_all=$(awk '{print $2}' <(sed -u '2!d' <(free -m)))
ram_now=$(awk '{print $3}' <(sed -u '2!d' <(free -m)))
ram_free=$(awk '{print $4}' <(sed -u '2!d' <(free -m)))
ram_share=$(awk '{print $5}' <(sed -u '2!d' <(free -m)))
ram_cache=$(awk '{print $6}' <(sed -u '2!d' <(free -m)))
ram_avaliable=$(awk '{print $7}' <(sed -u '2!d' <(free -m)))

if ((ram_now<=48)); then
	echo -e "\nTotal: $ram_all Mb"
	echo -e "Usando: $ram_now Mb"
	echo -e "Livre: $ram_free Mb"
	echo -e "Compartilhada: $ram_share Mb"
	echo -e "Cache: $ram_cache Mb"
	echo -e "Disponivel: $ram_avaliable Mb"
	echo -e '\n(=         )'
elif ((ram_now<=96)); then
	echo -e "\nTotal: $ram_all Mb"
	echo -e "Usando: $ram_now Mb"
	echo -e "Livre: $ram_free Mb"
	echo -e "Compartilhada: $ram_share Mb"
	echo -e "Cache: $ram_cache Mb"
	echo -e "Disponivel: $ram_avaliable Mb"
	echo -e '\n(==        )'
elif ((ram_now<=144)); then
	echo -e "\nTotal: $ram_all Mb"
	echo -e "Usando: $ram_now Mb"
	echo -e "Livre: $ram_free Mb"
	echo -e "Compartilhada: $ram_share Mb"
	echo -e "Cache: $ram_cache Mb"
	echo -e "Disponivel: $ram_avaliable Mb"
	echo -e '\n(===       )'
elif ((ram_now<=192)); then
	echo -e "\nTotal: $ram_all Mb"
	echo -e "Usando: $ram_now Mb"
	echo -e "Livre: $ram_free Mb"
	echo -e "Compartilhada: $ram_share Mb"
	echo -e "Cache: $ram_cache Mb"
	echo -e "Disponivel: $ram_avaliable Mb"
	echo -e '\n(====      )'
elif ((ram_now<=240)); then
	echo -e "\nTotal: $ram_all Mb"
	echo -e "Usando: $ram_now Mb"
	echo -e "Livre: $ram_free Mb"
	echo -e "Compartilhada: $ram_share Mb"
	echo -e "Cache: $ram_cache Mb"
	echo -e "Disponivel: $ram_avaliable Mb"
	echo -e '\n(=====     )'
elif ((ram_now<=288)); then
	echo -e "\nTotal: $ram_all Mb"
	echo -e "Usando: $ram_now Mb"
	echo -e "Livre: $ram_free Mb"
	echo -e "Compartilhada: $ram_share Mb"
	echo -e "Cache: $ram_cache Mb"
	echo -e "Disponivel: $ram_avaliable Mb"
	echo -e '\n(======    )'
elif ((ram_now<=336)); then
	echo -e "\nTotal: $ram_all Mb"
	echo -e "Usando: $ram_now Mb"
	echo -e "Livre: $ram_free Mb"
	echo -e "Compartilhada: $ram_share Mb"
	echo -e "Cache: $ram_cache Mb"
	echo -e "Disponivel: $ram_avaliable Mb"
	echo -e '\n(=======   )'
elif ((ram_now<=384)); then
	echo -e "\nTotal: $ram_all Mb"
	echo -e "Usando: $ram_now Mb"
	echo -e "Livre: $ram_free Mb"
	echo -e "Compartilhada: $ram_share Mb"
	echo -e "Cache: $ram_cache Mb"
	echo -e "Disponivel: $ram_avaliable Mb"
	echo -e '\n(========  )'
elif ((ram_now<=432)); then
	echo -e "\nTotal: $ram_all Mb"
	echo -e "Usando: $ram_now Mb"
	echo -e "Livre: $ram_free Mb"
	echo -e "Compartilhada: $ram_share Mb"
	echo -e "Cache: $ram_cache Mb"
	echo -e "Disponivel: $ram_avaliable Mb"
	echo -e '\n(========= )'
elif ((ram_now<=480)); then
	echo -e "\nTotal: $ram_all Mb"
	echo -e "Usando: $ram_now Mb"
	echo -e "Livre: $ram_free Mb"
	echo -e "Compartilhada: $ram_share Mb"
	echo -e "Cache: $ram_cache Mb"
	echo -e "Disponivel: $ram_avaliable Mb"
	echo -e '\n(==========)'
fi



