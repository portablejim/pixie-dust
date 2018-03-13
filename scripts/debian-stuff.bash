#!/bin/bash

/bin/mkdir /root/.ssh || return 10;
/bin/chmod 0700 /root/.ssh || return 11;
echo 'ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILxh0ABdbGFSn4Kq8z2RICVxVZYZn0Nw8GW6wYy85A6V james@skeleton-windows' >> /root/.ssh/authorized_keys || return 12;
echo 'ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPcRUSo5AStg2sW+EooUv0t1QlCqjgAohWpxrhDWKF3w james@skeleton' >> /root/.ssh/authorized_keys || return 13;
/bin/chmod 0600 /root/.ssh/authorized_keys || return 14;
/bin/systemctl enable ssh || return 15;

#/usr/bin/passwd -l root

