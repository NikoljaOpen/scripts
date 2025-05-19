sed -i 's/^#en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen
sed -i 's/^#ru_RU.UTF-8 UTF-8/ru_RU.UTF-8 UTF-8/' /etc/locale.gen
echo 'LANG="ru_RU.UTF-8"' >> /etc/locale.conf
locale-gen
systemctl enable NetworkManager
timedatectl set-timezone Europe/Moscow
timedatectl set-ntp true
echo 'arch_desktop' >> /etc/hostname
echo '127.0.1.1    arch_desktop.localedomain    arch_desktop' >> /etc/hosts
refind-install
