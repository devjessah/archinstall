#!/bin/bash

ln -sf /usr/share/zoneinfo/Asia/Manila /etc/localtime
hwclock --systohc											
echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
locale-gen													
echo "LANG=en_US.UTF-8" >> /etc/locale.conf
echo "arch" >> /etc/hostname

cat <<EOF > /etc/hosts
127.0.0.1 localhost
::1 localhost
127.0.1.1 arch.localdomain  arch
EOF

passwd

pacman -S --noconfirm networkmanager git terminus-font neofetch


## === Systemd Bootloader === ##

bootctl --path=/boot install

cat <<EOF > /boot/loader/loader.conf
timeout 0
default arch-*
EOF

cat <<EOF > /boot/loader/entries/arch.conf
title    Arch Linux
linux    /vmlinuz-linux
initrd   /intel-ucode.img
initrd   /initramfs-linux.img
options  root=/dev/sda3 rw
EOF

## === Start Services on Boot === ##
systemctl enable NetworkManager	

## end ##
exit
