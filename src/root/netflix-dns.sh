#!/bin/sh

#make sure the directory for the python libraries is in the chroot
mkdir -p /var/unbound/usr/local/lib/python2.7

#link the actual python library directory to the chroot's directory
mount -t nullfs /usr/local/lib/python2.7 /var/unbound/usr/local/lib/python2.7

#copy the python script to the /var/unbound directory so 
#unbound-checkconf can find it
cp /root/netflix-no-aaaa.py /var/unbound/
cp /root/netflix-no-aaaa.py /var/unbound/var/unbound/

#create a /var/unbound directory in the /var/unbound directory so that 
#unbound can find the script
mkdir -p /var/unbound/var/unbound
