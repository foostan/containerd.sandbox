#!/usr/bin/env bash

# Exit if already bootstrapped
test -f ~/bootstrapped && exit

wget -q https://github.com/docker/containerd/releases/download/0.0.4/containerd-linux64 -O containerd
wget -q https://github.com/docker/containerd/releases/download/0.0.4/ctr-linux64 -O ctr
chmod +x containerd && sudo mv  /usr/local/bin
chmod +x ctr && sudo mv ctr /usr/local/bin

date > ~/bootstrapped
