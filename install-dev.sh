add-apt-repository --yes ppa:webupd8team/java
apt-get -y update
apt-get -y install oracle-java7-installer

apt-get -y install openvpn
mkdir /etc/openvpn/keys

# then copy ovpn key to /etc/openvpn/keys

#cd /etc/openvpn
#setsid sudo openvpn --config basko.ovpn 

#check client is start
#sudo ps -x | grep openvpn



apt-get -y install shutter subversion 

apt-get -y autoremove

#todo idea
#todo gradle