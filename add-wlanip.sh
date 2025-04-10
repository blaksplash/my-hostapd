ip addr add 192.168.50.1/24 dev wlan0
iptables -t nat -A  POSTROUTING -o eth0 -j MASQUERADE
systemctl restart dhcpcd
systemctl restart dnsmasq
systemctl restart hostapd
