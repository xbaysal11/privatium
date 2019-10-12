<p align="center">
    <img src="https://i.postimg.cc/0jXS4kxK/pr.png" alt="logo" width="154" height="154">
</p>

<h1 align="center">FILE SHARING</h1>

[![Privatium](https://img.shields.io/badge/Privatium-v.1.0.0-00aced.svg)](https://github.com/xbaysal11/privatium)
[![https://t.me/xbaysal11](https://img.shields.io/badge/%F0%9F%92%AC%20Telegram-xbaysal11-blue.svg)](https://t.me/xbaysal11)
[![Privatium](https://img.shields.io/github/license/xbaysal11/privatium)](https://github.com/xbaysal11/privatium)
[![Github](https://img.shields.io/github/followers/xbaysal11?style=social)](https://github.com/xbaysal11)
[![Privatium](https://img.shields.io/github/stars/xbaysal11/privatium?style=social)](https://github.com/xbaysal11/privatium)

---

### 1. Complete droplet section.

[Droplet Creating Documentation](https://github.com/xbaysal11/privatium/blob/master/droplet/)

### 2. Install Nginx.

```bash
sudo apt install nginx
```

### 3. Create a folder in /var/www/...

```bash
cd /var/www
mkdir yourDomain.name   //xbaysal11.com
cd yourDomain.name
mkdir html
cd html
```

### 4. Configure NGINX.

```bash
cd /etc/nginx/sites-enabled
vim yourDomain.name
```

```bash
// Paste it and change yourDomain.name
server {
        listen 80;
        listen [::]:80;

    root /var/www/yourDomain.name/html;
    index index.html index.htm index.nginx-debian.html;

    server_name yourDomain.name www.yourDomain.name;

    location / {
            try_files $uri $uri/ =404;
    }
}
```

```bash
sudo reboot
```

### 5. Configure local machine.

Steps:

- 1.Install necessary software.

```bash
sudo apt install xclip
```

- 2.Take a [script.](https://gitcdn.link/repo/xbaysal11/privatium/master/fileshare/fileshare.sh)
- 3.Change two variable in script.

```bash
vim fileshare.sh
```

```bash
pubIP="35.245.175.101"
domain="xbaysal11.ml"
```

- 4.Give to script execute rights and run.

```bash
chmod +x fileshare.sh
./fileshare.sh
```

### 6. Usage.

- 1.Start script

```bash
./fileshare.sh ~/<path to your file>/<file name>
```

- 2.We will see that we had text in the buffer.
- 3.We can paste this link into the browser or share and see download is starting.

---

- [Main Page Privatium](https://github.com/xbaysal11/privatium)
- [Droplet Creating Documentation](https://github.com/xbaysal11/privatium/blob/master/droplet/)
- [Screenshot Sharing Documentation](https://github.com/xbaysal11/privatium/blob/master/screenshot/)
- [VPN Documentation](https://github.com/xbaysal11/privatium/blob/master/vpn/)
- [PROXY Documentation](https://github.com/xbaysal11/privatium/blob/master/proxy/)

---

### SPONSORS [[Become a sponsor](https://t.me/xbaysal11)]

[![https://t.me/xbaysal11](https://img.shields.io/badge/sponsors-0-brightgreen)](https://t.me/xbaysal11)

---

### LICENSE

Privatium is [GPL licensed.](https://github.com/xbaysal11/privatium/blob/master/LICENSE)
