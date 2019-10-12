<p align="center">
    <img src="https://i.postimg.cc/0jXS4kxK/pr.png" alt="logo" width="154" height="154">
</p>

<h1 align="center">PROXY</h1>

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
Name: proxy
Targets: All instances in the network
Source IP ranges: 0.0.0.0/0
Protocols and ports: all
```

and Save.

### 3. Install Docker.

```bash
snap install docker
```

### 4. Install and Configure Docker image.

```bash
docker run --name s5 -d --restart=always -p 1111:1111 -e "USERS=user1:pass1,user2:pass2" egregors/socks5-server
```

### 5. Usage.

Open Telegram.
Go to 'Menu' > 'Settings' > 'Advanced' > 'Connection Type' > 'Connection Type' > 'Use Custom Proxy':

```bash
Select: SOCK5
hostname: <public IP of VM>
port: 1111
username: user1
password: pass2
```

and Save

---

- [Main Page Privatium](https://github.com/xbaysal11/privatium)
- [Droplet Creating Documentation](https://github.com/xbaysal11/privatium/blob/master/droplet/)
- [Screenshot Sharing Documentation](https://github.com/xbaysal11/privatium/blob/master/screenshot/)
- [File Sharing Documentation](https://github.com/xbaysal11/privatium/blob/master/fileshare/)
- [VPN Documentation](https://github.com/xbaysal11/privatium/blob/master/vpn/)

---

### SPONSORS [[Become a sponsor](https://t.me/xbaysal11)]

[![https://t.me/xbaysal11](https://img.shields.io/badge/sponsors-0-brightgreen)](https://t.me/xbaysal11)

---

### LICENSE

Privatium is [GPL licensed.](https://github.com/xbaysal11/privatium/blob/master/LICENSE)
