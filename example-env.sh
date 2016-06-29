#
#	Eample setup.
#	packet to 10.0.0.0/24 or 10.0.1.0/24 are forward by SUME hardware
#

sudo rmmod sume_riffa
sudo insmod sume_riffa.ko

sudo ifconfig nf0 up
sudo ifconfig nf0 172.16.0.1/24

sudo ifconfig nf1 up
sudo ifconfig nf1 172.16.1.1/24

sudo ip route add to 10.0.0.0/24 via 172.16.0.2
sudo ip route add to 10.0.1.0/24 via 172.16.1.2
