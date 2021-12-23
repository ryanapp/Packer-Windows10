#/bin/sh

wget https://fedorapeople.org/groups/virt/virtio-win/direct-downloads/stable-virtio/virtio-win.iso
mkdir virtio-drivers
( cd virtio-drivers ; bsdtar xfp ../virtio-win.iso )
