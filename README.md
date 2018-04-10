# Build OpenBSD qcow2 Image with Packer, QEMU, and KVM

Review *openbsd-\*-x86_64.json* and change these settings when desired:

* "accelerator": "kvm" -- If you're not using KVM, remove this line
* "System hostname = " -- Change to what you need
* "Setup a user = "  -- Change to what you need
* "Full name for user = "  -- Change to what you need
* "Password for user = "  -- Change to what you need
* "What timezone are you in = "  -- Change to what you need
* "vm_name":  -- Change to what you need

In *./postinstall.sh*, change *USERNAME_CHANGEME* to what you need.

To build the image,

        $ packer build openbsd-6.3-x86_64.json
        $ packer build openbsd-6.2-x86_64.json
