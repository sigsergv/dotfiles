To enable BT devices charge status, uncomment this line in file `/etc/bluetooth/main.conf`:

    # Enables D-Bus experimental interfaces
    # Possible values: true or false
    Experimental = true

To restart bluetooth:

    sudo systemctl restart bluetooth

To enable BT profile switching install blueman:

    sudo apt install blueman
