# Local env setup using ansible

If this is ran on Ubuntu it will install intune.  After running the playbook start edge and then start intune to complete device registration.

Install ansible
```
sudo dnf install ansible
```

Run the play to configure your environment.  --ask-become-pass is only required for the first execution.

```
ansible-playbook site.yml --ask-become-pass
```


The playbook sets up go environment variables but does not install it, install it using:
```
wget https://go.dev/dl/go1.20.14.linux-amd64.tar.gz
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.20.14.linux-amd64.tar.gz
rm go1.20.14.linux-amd64.tar.gz
```
