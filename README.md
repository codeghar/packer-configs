# Build OpenBSD 6.2 QCOW2 Image with Packer, QEMU, and KVM

Review *openbsd-6.2-x86_64.json* and change these settings when desired:

* "accelerator": "kvm" -- If you're not using KVM, remove this
* "System hostname = openbsd62<enter>" -- Change to what you need
* "Setup a user = USERNAME_CHANGEME<enter>"  -- Change to what you need
* "Full name for user = USERNAME_CHANGEME<enter>"  -- Change to what you need
* "Password for user = PASSWORD_CHANGEME<enter>"  -- Change to what you need
* "What timezone are you in = UTC<enter>"  -- Change to what you need
* "ssh_password": "PASSWORD_CHANGEME"  -- Change to what you need
* "vm_name": "openbsd62.qcow2"  -- Change to what you need

In *postinstall.sh*, change *USERNAME_CHANGEME* to what you need.

To build the image,

        $ packer build openbsd-6.2-x86_64.json
