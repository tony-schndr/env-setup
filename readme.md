# env setup for ARO development using ansible

The playbook `site.yml` does the following:
- Removes `/usr/local/go` for clean install of go
- Downloads and extracts go tarball to `/usr/local/go`
- Adds `/usr/local/go/bin` to PATH in `.bashrc`

Execute the ansbile playbook with `ansible-playbook site.yml --ask-become-pass`

