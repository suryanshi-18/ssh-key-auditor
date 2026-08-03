#!/bin/bash
echo SSH_KEY_SECURITY_AUDITOR
echo Checking SSH directory...
if [ -d "$HOME/ .ssh" ]; then echo SSH directory exists; else echo NO SSH directory found; fi
