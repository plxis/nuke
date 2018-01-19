# nuke

Packer build configurations to produce images suitable for development.

## Requirements

* Packer v0.12.0+
* VirtualBox 5.0.28+

## Cache

Packer uses a local cache to optimize the process of downloading remote base images. To set the location of this cache:

```bash
export PACKER_CACHE_DIR=<cache_dir>
```

## Usage

To build an image, run the following:

```bash
ant -Dbuild-packer.product=<product>
```

Available products:

* centos-5.11-x86_64
* centos-6.8-x86_64
* centos-7-x86_64

## Experimental

### Install VirtualBox 5.1 on vCloud

```bash
# Configure VirtualBox Repository
cd /etc/yum.repos.d/
wget http://download.virtualbox.org/virtualbox/rpm/rhel/virtualbox.repo

# Install Packages
yum update -y
yum install wget binutils qt gcc make patch libgomp glibc-headers glibc-devel kernel-headers kernel-devel dkms
yum remove -y VirtualBox-*
yum install -y VirtualBox-5.1

# Configure VirtualBox
/usr/lib/virtualbox/vbxodrv.sh setup

# Install VirtualBox Extension Pack
wget http://download.virtualbox.org/virtualbox/5.1.0/Oracle_VM_VirtualBox_Extension_Pack-5.1.0.vbox-extpack
VBoxManage extpack install Oracle_VM_VirtualBox_Extension_Pack-5.1.0.vbox-extpack
```

## What's Next

* Automate builds

## Resources

* [Packer](https://www.packer.io)
* [VirtualBox](https://www.virtualbox.org)
