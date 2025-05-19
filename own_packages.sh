mkfs.fat -F32 /dev/sda1
mkfs.ext4 /dev/sda2
mkfs.ext4 /dev/sdb1
mount /dev/sda2 /mnt
mount --mkdir /dev/sdb1 /mnt/data
pacstrap /mnt base base-devel linux linux-firmware linux-headers networkmanager nano vim bash-completion refind gdisk noto-fonts noto-fonts-cjk noto-fonts-extra noto-fonts-emoji ttf-jetbrains-mono wayland xorg-xwayland pipewire
genfstab -U /mnt >> /mnt/etc/fstab
