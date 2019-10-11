<p align="center">
    <img src="https://i.postimg.cc/0jXS4kxK/pr.png" alt="logo" width="154" height="154">
</p>

<h3 align="center">PRIVATIUM</h3>

<p align="center">
     Screenshoter + File Sharer + VPN + PROXY
</p>

---

[![Privatium](https://img.shields.io/badge/Privatium-v.1.0.0-00aced.svg)](https://github.com/xbaysal11/privatium)
[![https://t.me/xbaysal11](https://img.shields.io/badge/%F0%9F%92%AC%20Telegram-xbaysal11-blue.svg)](https://t.me/xbaysal11)
[![Privatium](https://img.shields.io/github/license/xbaysal11/privatium)](https://github.com/xbaysal11/privatium)
[![Github](https://img.shields.io/github/followers/xbaysal11?style=social)](https://github.com/xbaysal11)
[![Privatium](https://img.shields.io/github/stars/xbaysal11/privatium?style=social)](https://github.com/xbaysal11/privatium)

---

# CREATE DROPLET

I will use hosting from Google Cloud Platform, as in my opinion it is the most convenient.

### 1. Sign up on Google Cloud Platform.

[Google Cloud Platform](https://cloud.google.com/)

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

# SCREENSHOT SHARING

### 1. Install Nginx.

```bash
sudo apt install nginx
```

### 2. Create a folder in /var/www/...

```bash
cd /var/www
mkdir yourDomain.name   //xbaysal11.com
cd yourDomain.name
mkdir html
cd html
```

### 3. Configure NGINX.

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

### 4. Configure local machine.

Steps:

- 1.Install necessary software.

```bash
sudo apt install imagemagick xclip
```

- 2.Take a script from [my repo.](https://github.com/xbaysal11/privatium)
- 3.Change two variable in script.

```bash
vim screenshot.sh
```

```bash
pubIP="35.245.175.101"
domain="xbaysal11.ml"
```

- 4.Give to script execute rights and run.

```bash
chmod +x screenshot.sh
./screenshot.sh
```

### 5. Usage.

- 1.The cursor should change, click and select the area.
- 2.We will see that we had text in the buffer.
- 3.We can paste this link into the browser or share and see our screenshot.

---

# FILE SHARING

### 1. Do 1,2,3 steps of SCREENSHOT SHARING.

### 2. Configure local machine.

Steps:

- 1.Install necessary software.

```bash
sudo apt install xclip
```

- 2.Take a script from [my repo.](https://github.com/xbaysal11/privatium)
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

### 3. Usage.

- 1.Start script

```bash
./fileshare.sh ~/<path to your file>/<file name>
```

- 2.We will see that we had text in the buffer.
- 3.We can paste this link into the browser or share and see download is starting.

---
