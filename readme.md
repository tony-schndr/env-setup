# Local env setup using ansible

Install required roles.
```
ansible-galaxy install -r requirements.yml 
```
Run the play to configure your environment.
`ansible-playbook site.yml --ask-become-pass`

