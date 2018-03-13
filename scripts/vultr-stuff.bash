#!/bin/bash

NEWHOSTNAME=$(wget -O - http://169.254.169.254/v1/hostname -q) && hostnamectl set-hostname $NEWHOSTNAME
