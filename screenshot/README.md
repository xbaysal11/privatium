# SCREENSHOT SHARING

### 1. Complete droplet section.

[Droplet Creating Documintation](droplet/droplet.md)

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
sudo apt install imagemagick xclip
```

- 2.Take a [script](https://gitcdn.link/repo/xbaysal11/privatium/master/screenshot/screenshot.sh)
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

### 6. Usage.

- 1.The cursor should change, click and select the area.
- 2.We will see that we had text in the buffer.
- 3.We can paste this link into the browser or share and see our screenshot.

---

- [Droplet Creating Documintation](droplet/README.md)
- [File Sharing Documintation](fileshare/README.md)
