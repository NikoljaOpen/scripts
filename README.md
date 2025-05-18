### Разметить диски
`lsblk` - информация о дисках

`cfdisk /dev/...` разметка конкретного диска

### Запустить скрипт
Он отфарматирует разделы, примонтирует диски, установит пакеты и сгенирирует fstab

### Настройка пользователя
перейти в систему `arch-chroot /mnt`

запустить `edit_setting.sh`

`passwd` - задать пароль для root

`useradd -m <username>` - добавить пользователя

`passwd <username>` - задать пароль для пользователя

`usermod -aG wheel,audio,video,storage,vboxusers <username>` - добавить пользователя в группы

`visudo` - открывает файл настроек sudo нужно раскоментировать `%wheel ALL=(ALL) ALL`

### Настроить смену языка
`nano .config/hypr/hyprland.conf`

```
input {
    kb_layout = us,ru
    kb_variant =
    kb_model =
    kb_options = grp:alt_shift_toggle
    kb_rules =

    follow_mouse = 1

    sensitivity = 0 # -1.0 - 1.0, 0 means no modification.

    touchpad {
        natural_scroll = false
    }
}
```
