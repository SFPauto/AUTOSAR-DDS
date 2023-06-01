#!/usr/bin/env bash
cd /AUTOSAR-DDS/os/viper
make
export VIPER_PATH=/AUTOSAR-DDS/os/viper
cd /AUTOSAR-DDS/os/goil/makefile-unix
python3 build.py
rm -f /usr/bin/goil
ln -s /AUTOSAR-DDS/os/goil/makefile-unix/goil /usr/bin/goil