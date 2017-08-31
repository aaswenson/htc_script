#!/bin/bash
chmod 700 ../
echo "Copying file..."
cp -v /mnt/gluster/mouginot/tar_install/install_mcnpbin_mcnpdata_mure_JEFF.tar.gz .
echo "copy: done."
echo "untaring..."
tar -xvf install_mcnpbin_mcnpdata_mure_JEFF.tar.gz
echo "untaring: done."
echo "removing..."
rm -v install_mcnpbin_mcnpdata_mure_JEFF.tar.gz
echo "removing: done."
