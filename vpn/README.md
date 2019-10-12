<p align="center">
    <img src="https://i.postimg.cc/0jXS4kxK/pr.png" alt="logo" width="154" height="154">
</p>

<h1 align="center">VPN</h1>

[![Privatium](https://img.shields.io/badge/Privatium-v.1.0.0-00aced.svg)](https://github.com/xbaysal11/privatium)
[![https://t.me/xbaysal11](https://img.shields.io/badge/%F0%9F%92%AC%20Telegram-xbaysal11-blue.svg)](https://t.me/xbaysal11)
[![Privatium](https://img.shields.io/github/license/xbaysal11/privatium)](https://github.com/xbaysal11/privatium)
[![Github](https://img.shields.io/github/followers/xbaysal11?style=social)](https://github.com/xbaysal11)
[![Privatium](https://img.shields.io/github/stars/xbaysal11/privatium?style=social)](https://github.com/xbaysal11/privatium)

---

### 1. Complete droplet section.

[Droplet Creating Documentation](https://github.com/xbaysal11/privatium/blob/master/droplet/)

### 2. Enable traffic from outside in GCP

Go to 'VPC Network' > 'Firewall rules' > 'Create Firewall rule':

```bash
Name: vpn
Targets: All instances in the network
Source IP ranges: 0.0.0.0/0
Protocols and ports: udp:1194
```

and Save.

### 3. Go to VM instances and start VM console

```bash
sudo su
apt install wget
wget https://gitcdn.link/repo/xbaysal11/privatium/master/vpn/openvpn-install.sh
sudo bash openvpn-install.sh
```

```bash
IP address: <IPv4 address of network>  // just press enter
Public IP address / hostname: <your public IP of VM> //Write public IP of VM and press enter
Protocol: 1 // Write 1 and press enter
Port: 1194 //write 1194 and press enter
DNS: 2 // Write 2 and press enter
Client name: <your name> // Write your name and press enter
// Press any key to continue
```

### 4. Download VPN.

```bash
cd /home
ls
```

Download file yourName.ovpn to your local machine

### 5. Usage.

On local machine

```bash
sudo apt install openvpn
```

```bash
sudo openvpn --config <yourName>.ovpn
```

---

- [Main Page Privatium](https://github.com/xbaysal11/privatium)
- [Droplet Creating Documentation](https://github.com/xbaysal11/privatium/blob/master/droplet/)
- [Screenshot Sharing Documentation](https://github.com/xbaysal11/privatium/blob/master/screenshot/)
- [File Sharing Documentation](https://github.com/xbaysal11/privatium/blob/master/fileshare/)
- [PROXY Documentation](https://github.com/xbaysal11/privatium/blob/master/proxy/)

---

### SPONSORS [[Become a sponsor](https://t.me/xbaysal11)]

[![https://t.me/xbaysal11](https://img.shields.io/badge/sponsors-0-brightgreen)](https://t.me/xbaysal11)

---

### LICENSE

Privatium is [GPL licensed.](https://github.com/xbaysal11/privatium/blob/master/LICENSE)
