#!/bin/bash

wget https://raw.githubusercontent.com/Bigu2208/SSHPLUS/main/deletar.sh
chmod 777 deletar.sh
crontab -r >/dev/null 2>&1
(
	crontab -l 2>/dev/null
	echo "@daily /bin/verifatt"
	echo "@reboot /etc/autostart"
	echo "* * * * * /etc/autostart"
	echo "0 */6 * * * /bin/uexpired"
	echo "* * * * * /sbin/iptables -F"
	echo "* * * * * /bin/portas"
	echo "0 */6 * * * /root/deletar.sh"
) | crontab -