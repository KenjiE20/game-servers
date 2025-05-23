# Minecraft
# Swap commented lines for a port range for multiple servers
sudo iptables -A INPUT -p tcp --dport 25565 -j ACCEPT
#sudo iptables -A INPUT -p tcp --dport 25565:25570 -j ACCEPT
sudo iptables -A INPUT -p udp --dport 25565 -j ACCEPT
#sudo iptables -A INPUT -p udp --dport 25565:25570 -j ACCEPT
# Minecraft Simple Voice Chat
sudo iptables -A INPUT -p udp --dport 24454 -j ACCEPT
#sudo iptables -A INPUT -p udp --dport 24454:24459 -j ACCEPT

# Webpage
sudo iptables -A INPUT -p tcp --dport 80 -m conntrack --ctstate NEW,ESTABLISHED -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 443 -m conntrack --ctstate NEW,ESTABLISHED -j ACCEPT

# Save all and verify
sudo netfilter-persistent save
sudo iptables -L
