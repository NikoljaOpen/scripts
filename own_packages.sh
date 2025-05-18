mkfs.vfat /dev/sda1
mkfs.ext4 /dev/sda2
mkfs.ext4 /dev/sdb1
pacstrap /mntacman -S base base-devel linux linux-firmware linux-headers nano vim bash-completion refind gdisk noto-fonts noto-fonts-cjk noto-fonts-extra noto-fonts-emoji ttf-jetbrains-mono wayland xorg-xwayland
genfstab /mnt >> /mnt/etc/fstab
