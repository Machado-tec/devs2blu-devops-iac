#!/bin/bash
chmod 600 /root/.ssh/authorized_keys
chown root.root /root/.ssh/authorized_keys
/usr/sbin/sshd -D
