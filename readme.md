# Local env setup using ansible

Install ansible
```
sudo dnf install ansible
```

```
Run the play to configure your environment.  --ask-become-pass is only required for the first execution.
`ansible-playbook site.yml --ask-become-pass`

install go
```
wget https://go.dev/dl/go1.20.14.linux-amd64.tar.gz
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.20.14.linux-amd64.tar.gz
rm go1.20.14.linux-amd64.tar.gz
```
