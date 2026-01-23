#!/bin/bash
# IPv4 üçün port 80-ə TCP daxil olan bağlantılara icazə ver
sudo iptables -A INPUT -p tcp --dport 80 -j ACCEPT
echo "Rules updated"

# IPv6 üçün port 80-ə TCP daxil olan bağlantılara icazə ver
sudo ip6tables -A INPUT -p tcp --dport 80 -j ACCEPT
echo "Rules updated (v6)"
