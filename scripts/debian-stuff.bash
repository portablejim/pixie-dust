#!/bin/bash

/bin/mkdir /root/.ssh || echo "SSH already exists";
/bin/chmod 0700 /root/.ssh;
echo 'ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILxh0ABdbGFSn4Kq8z2RICVxVZYZn0Nw8GW6wYy85A6V james@skeleton-windows' >> /root/.ssh/authorized_keys;
echo 'ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPcRUSo5AStg2sW+EooUv0t1QlCqjgAohWpxrhDWKF3w james@skeleton' >> /root/.ssh/authorized_keys;
/bin/chmod 0600 /root/.ssh/authorized_keys;
/bin/systemctl enable ssh;

#/usr/bin/passwd -l root

