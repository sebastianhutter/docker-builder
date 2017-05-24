FROM debian:jessie

# set workdir
WORKDIR /

# install build tools
RUN apt-get update \
  && apt-get install -y gettext build-essential git gzip curl unzip \
      debootstrap syslinux isolinux squashfs-tools genisoimage memtest86+ pciutils \
  && rm -rf /var/lib/apt/lists/*

