# CryFS helper scripts

CryFS encrypted vaults are located in syncthing directory `~/Sync/Vaults`. Each vault has name that matches regex `^[a-z]+$`.

Mount points are located in directory `~/Vaults`, mount point name is the same as vault name.

There are two helper scripts: `mount-TEMPLATE` and `umount-TEMPLATE`, just copy/symlink to files and replace `TEMPLATE` with
actual vault name, for example, `mount-personal` will handle vault `~/Sync/Vault/personal` and mount point `~/Vaults/personal`.

Help scripts support standard cryfs binary location (`/usr/bin/cryfs`) and one from macos homebrew (`/opt/homebrew/bin/cryfs`).
