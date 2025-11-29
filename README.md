# MedOS Create Bootstrap Script

**Version:** 1 'Izmir' Beta

This repository contains a simple bootstrap script for MedOS.  
It copies the contents of `medos-rootfs` to a target directory, similar to `debootstrap`.

## Warning
Currently, **only version 1 'Izmir' Beta** is available. Use at your own risk.

## Usage

1. Make sure `medos-bootstrap.sh` and `medos-rootfs` are in the same directory.
2. Run the script:

```bash
./medos-bootstrap.sh /path/to/target
