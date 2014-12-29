#
# install virtualbox guest additions
#
sudo mount -o loop /home/vagrant/VBoxGuestAdditions.iso /mnt
yes | sudo sh /mnt/VBoxLinuxAdditions.run
sudo umount /mnt
sudo /etc/init.d/vboxadd setup
rm /home/vagrant/VBoxGuestAdditions.iso

#
# cleanup yum cache
#
sudo yum clean all
sudo rm -rf /var/cache/yum

#
# zero fill for unused disk space
#
sudo dd if=/dev/zero of=/EMPTY bs=1M
sudo rm -rf /EMPTY
