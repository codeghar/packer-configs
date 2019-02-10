# Build OpenBSD qcow2 Image with Packer, QEMU, and KVM

OpenBSD 6.4, 6.3, and 6.2 are supported.

Review _variables.json_ and change the values for:

- root_ssh_password
- new_user
- new_user_password

To build the image,

        $ packer build -var-file=variables.json openbsd-6.4-x86_64.json
        $ packer build -var-file=variables.json openbsd-6.3-x86_64.json
        $ packer build -var-file=variables.json openbsd-6.2-x86_64.json

Or,

        $ make build
