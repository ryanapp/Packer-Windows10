#/bin/sh

#wget https://fedorapeople.org/groups/virt/virtio-win/direct-downloads/stable-virtio/virtio-win.iso
#mkdir virtio-drivers
#( cd virtio-drivers ; bsdtar xfp ../virtio-win.iso )
md5=($(md5sum $1))
packer build -var "iso_path=$1" -var "iso_md5=$md5" packer.json
