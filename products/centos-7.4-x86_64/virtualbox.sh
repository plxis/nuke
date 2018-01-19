#!/bin/sh

sudo yum -y groupinstall 'Development Tools'
sudo yum -y install kernel-devel-$(uname -r)

mount -o loop /home/vagrant/VBoxGuestAdditions.iso /mnt
/mnt/VBoxLinuxAdditions.run
umount /mnt
rm -rf VBoxGuestAdditions.iso