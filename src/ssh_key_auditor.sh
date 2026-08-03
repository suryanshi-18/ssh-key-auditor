#!/bin/bash
echo "SSH KEY SECURITY AUDITOR"
echo "Checking SSH directory..."
SSH_DIR="$HOME/.ssh"
if [ -d "$SSH_DIR" ]; then echo "SSH directory existS: $SSH_DIR"; else echo "NO SSH directory found"; fi
echo "Checking private key permissions..."
find "$SSH_DIR" -maxdepth 1 -type f -name "id_*" ! -name "*.pub" -exec stat -c "key: %n | permissions: %a" {} \;
if [ -f "$SSH_DIR/authorized_keys" ]; then echo "authorized_keys exists"; else echo "authorized_keys not found"; fi
echo "Checking for old SSH keys ..."
find "$SSH_DIR" -maxdepth 1 -type f \( -name "id_*" ! -name "*.pub" \) -mtime +365 -print
