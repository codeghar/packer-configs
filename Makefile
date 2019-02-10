.PHONY: build
build: ~/bin/packer
	packer build -var-file=variables.json openbsd-6.4-x86_64.json

~/bin/packer:
	curl -o ~/bin/packer.zip https://releases.hashicorp.com/packer/1.3.4/packer_1.3.4_linux_amd64.zip
	unzip -d ~/bin ~/bin/packer.zip
	rm -f ~/bin/packer.zip
