# Build OpenBSD qcow2 Image with Packer, QEMU, and KVM

OpenBSD 6.3 and 6.2 are supported.

Review relevant *\*.json* and change these variables when desired:

- root_ssh_password
- new_user
- new_user_password

To build the image,

        $ packer build openbsd-6.3-x86_64.json
        $ packer build openbsd-6.2-x86_64.json
