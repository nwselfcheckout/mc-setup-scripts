for port in "$@"
do
	sudo firewall-cmd --permanent --zone=public --add-port=$port/tcp;
	sudo firewall-cmd --permanent --zone=public --add-port=$port/udp;
done

sudo firewall-cmd --reload
