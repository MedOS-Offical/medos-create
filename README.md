# MedOS Create Bootstrap Script

**Version:** 1 'Izmir' Beta

This repository contains a simple bootstrap script for MedOS.
It copies the contents of `medos-rootfs` to a target directory, similar to `debootstrap`.

## ⚠️ Warning

Currently, **only version 1 'Izmir' Beta** is available.
Use this script at your own risk.

## 📦 Usage

**Step 1: Prepare the root filesystem**

Make sure you have `medos-rootfs.tar.gz` in the same directory as this repository.
Extract it to get the `medos-rootfs` folder:

```bash
tar -xzvf medos-rootfs.tar.gz
```

**Step 2: Verify the files**

Ensure that the following items exist in your directory:

`medos-bootstrap.sh` (the bootstrap script)
`medos-rootfs/` (the extracted root filesystem)

**Step 3: Make the script executable**

```bash
chmod +x medos-bootstrap.sh
```

**Step 4: Run the bootstrap script**

Provide a target directory where the root filesystem contents will be copied:

```bash
./medos-bootstrap.sh /path/to/target
```
