#!/bin/bash
iptables=`which iptables`
sbcblock="AstSBC"
sbcblockdropmsg="SBC LIST DROP"
ip=$1
sed -i /$1/d '/var/log/asterisk/sip_security.log'

$iptables -D $sbcblock -s $ip -m comment --comment "Log AstSBC »»»BRUTE FORCE«««" -j LOG --log-prefix "$sbcblockdropmsg"

$iptables -D $sbcblock -s $ip -m comment --comment "Regra AstSBC »»»BRUTE FORCE«««" -j DROP

echo ""
echo ""
echo "###############################################"
echo ""
echo " IP $1 Desbloqueado no AstSBC "
echo ""
echo "###############################################"
echo ""
echo ""
exit