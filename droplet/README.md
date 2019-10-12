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

- [Screenshot Sharing Documintation](https://github.com/xbaysal11/privatium/blob/master/screenshot/)
- [File Sharing Documintation](https://github.com/xbaysal11/privatium/blob/master/fileshare/)
