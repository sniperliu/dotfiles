#!/bin/bash

# dnsmasq
ln -sf $(pwd)/config/dnsmasq.conf /usr/local/etc/dnsmasq.conf
networksetup -setdnsservers Wi-Fi 127.0.0.1

# git
ln -sf $(pwd)/config/git/.gitconfig $HOME/.gitconfig

# aws
ln -sf $(pwd)/config/aws/config $HOME/.aws/config
chmod 700 $HOME/.aws

# ssh
chmod 700 $HOME/.ssh
