sudo ifconfig enp5s0f1   0.0.0.0 up
sudo ifconfig br-ex up
sudo ovs-vsctl add-port br-ex enp5s0f1
#sudo ip addr add 192.168.100.194/24 broadcast 192.168.20.255 dev br-ex
sudo ip addr add 192.168.20.71/24 broadcast 192.168.20.255 dev br-ex
sudo ip route add default via 192.168.20.254 dev br-ex
