#
# install virtualbox guest additions
#
sudo mount -o loop /home/vagrant/VBoxGuestAdditions.iso /mnt
yes | sudo sh /mnt/VBoxLinuxAdditions.run
sudo umount /mnt
sudo /etc/init.d/vboxadd setup
rm VBoxGuestAdditions.iso