#!/bin/bash
QFLEX=$HOME/qflex
git lfs fetch
git lfs pull
tar -xvf ubuntu16.tar.gz
tar -xvf matmul.tar.gz
mv ./matmul/* ./ubuntu16/
$QFLEX/qemu/scripts/snap-manager.py --qemu-img-cmd-path $QFLEX/qemu update $QFLEX/images/ubuntu16/ubuntu.qcow2