#!/bin/bash
iptables=`which iptables`
sbcblock="AstSBC"
sbcblockdropmsg="SBC LIST DROP"
atacante=`echo "$1" | cut -d: -f1`

if [ `asterisk -rx "sip show peers" | grep -c "$atacante"` -ne 0 ]; then

	`mv "$atacante" /dev/null`

	exit
fi

	if [ `grep -c "$atacante" /var/log/asterisk/sip_security.log` -eq 0 ]; then 
		echo $atacante >> /var/log/asterisk/sip_security.log
		$iptables -A $sbcblock -s $atacante -m comment --comment "Log AstSBC »»»BRUTE FORCE«««" -j LOG --log-prefix "$sbcblockdropmsg"
		$iptables -A $sbcblock -s $atacante -m comment --comment "Regra AstSBC »»»BRUTE FORCE«««" -j DROP

		exit

		else
			sort -u /var/log/asterisk/sip_security.log -o /var/log/asterisk/sip_security.log
			exit
	fi