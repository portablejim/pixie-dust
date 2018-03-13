#!/bin/bash

cd /root;
/bin/mkdir .ssh;
/bin/chmod 0700 .ssh;
echo 'ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILxh0ABdbGFSn4Kq8z2RICVxVZYZn0Nw8GW6wYy85A6V james@skeleton-windows' >> .ssh/authorized_keys;
echo 'ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPcRUSo5AStg2sW+EooUv0t1QlCqjgAohWpxrhDWKF3w james@skeleton' >> .ssh/authorized_keys;
/bin/chmod 0600 .ssh/authorized_keys;
/bin/systemctl enable ssh;

#/usr/bin/passwd -l root

