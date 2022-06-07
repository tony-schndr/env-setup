# Local env setup using ansible

Install ansible
```
sudo dnf install ansible
```

Install required roles.
```
ansible-galaxy install -r requirements.yml 
```
Run the play to configure your environment.
`ansible-playbook site.yml --ask-become-pass`

After play completes, add your user to libvirt group to
prevent bein prompted for passwrod everytime you run VMs
`sudo usermod -a -G libvirt $(whoami)`