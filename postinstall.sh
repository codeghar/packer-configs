#!/bin/sh

set -e

uname_r=$(uname -r)
arch_s=$(arch -s)

export PKG_PATH
PKG_PATH="${MIRROR}/pub/OpenBSD/${uname_r}/packages/${arch_s}/"

# set pkg path for users
echo "export PKG_PATH" >> /root/.profile
echo "PKG_PATH=\"${PKG_PATH}\"" >> /root/.profile
echo "export PKG_PATH" >> "/home/${NEWUSER}/.profile"
echo "PKG_PATH=\"${PKG_PATH}\"" >> "/home/${NEWUSER}/.profile"
