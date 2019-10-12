<p align="center">
    <img src="https://i.postimg.cc/0jXS4kxK/pr.png" alt="logo" width="154" height="154">
</p>

<h1 align="center">DROPLET</h1>

[![Privatium](https://img.shields.io/badge/Privatium-v.1.0.0-00aced.svg)](https://github.com/xbaysal11/privatium)
[![https://t.me/xbaysal11](https://img.shields.io/badge/%F0%9F%92%AC%20Telegram-xbaysal11-blue.svg)](https://t.me/xbaysal11)
[![Privatium](https://img.shields.io/github/license/xbaysal11/privatium)](https://github.com/xbaysal11/privatium)
[![Github](https://img.shields.io/github/followers/xbaysal11?style=social)](https://github.com/xbaysal11)
[![Privatium](https://img.shields.io/github/stars/xbaysal11/privatium?style=social)](https://github.com/xbaysal11/privatium)

---

I will use hosting from Google Cloud Platform, as in my opinion it is the most convenient.

### 1. Sign up on Google Cloud Platform.

[Google Cloud Platform](https://cloud.google.com/)

To register with GCP and receive an annual trial with a loan of \$300. You should already have a MasterCard / VISA card.

### 2. Create there the cheapest droplet for \$5.

### 3. Attach any of your domain to the created droplet.

### 4. Add your public ssh with username root.

### 5. Open console of GCP and permit root login.

```bash
sudo su root
cd
passwd root
vim /etc/ssh/sshd_config    //change PermitRootLogin to yes
service sshd restart
```

### 6. Go to the created droplet via SSH.

```bash
ssh root@<Public IP of VM>
```

### 7. Be renewed.

```bash
sudo apt-get update
sudo apt-get upgrade
```

---

- [Main Page Privatium](https://github.com/xbaysal11/privatium)
- [Screenshot Sharing Documentation](https://github.com/xbaysal11/privatium/blob/master/screenshot/)
- [File Sharing Documentation](https://github.com/xbaysal11/privatium/blob/master/fileshare/)
- [VPN Documentation](https://github.com/xbaysal11/privatium/blob/master/vpn/)
- [PROXY Documentation](https://github.com/xbaysal11/privatium/blob/master/proxy/)

---

### SPONSORS [[Become a sponsor](https://t.me/xbaysal11)]

[![https://t.me/xbaysal11](https://img.shields.io/badge/sponsors-0-brightgreen)](https://t.me/xbaysal11)

---

### LICENSE

Privatium is [GPL licensed.](https://github.com/xbaysal11/privatium/blob/master/LICENSE)
