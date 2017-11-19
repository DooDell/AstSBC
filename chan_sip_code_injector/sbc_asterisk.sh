#!/bin/bash
sleep 30
iptables=`which iptables`
sbcblock="AstSBC"
sbcblockdropmsg="SBC LIST DROP"
blacklist="BLACKLIST-INPUT"
blacklistdropmsg="BLACKLIST VOIPBL"

if [ `iptables -L | grep -c "Chain $blacklist"` -lt 1 ]; then
   $iptables -N $blacklist
   $iptables -I INPUT 1 -j $blacklist
fi

if [ `iptables -L | grep -c "Chain $sbcblock"` -lt 1 ]; then
   $iptables -N $sbcblock
   $iptables -I INPUT 2 -j $sbcblock
fi


for atacante in `cat /var/log/asterisk/sip_security.log`
 do
   $iptables -A $sbcblock -s $atacante -m comment --comment "Log AstSBC »»»BRUTE FORCE«««" -j LOG --log-prefix "$sbcblockdropmsg"
   $iptables -A $sbcblock -s $atacante -m comment --comment "Regra AstSBC »»»BRUTE FORCE«««" -j DROP
 done

##### Bloqueando Requisições ping (icmp)
$iptables -A INPUT -p icmp -j DROP

##### Carrega o Restore do IPTABLES
iptables-restore < /bin/rc.firewall

##### Lista Atualizada
/sbin/iptables -F $blacklist
wget -qO - http://www.voipbl.org/update/ | awk '{print "if [ ! -z \""$1"\" -a \""$1"\" !=  \"#\" ]; then /sbin/iptables -A BLACKLIST-INPUT -s \""$1"\" -j DROP;fi;"}' | sh

##### Salva as Configurações
iptables-save > /bin/rc.firewall

exit