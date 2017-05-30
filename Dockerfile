FROM debian:jessie

# set workdir
WORKDIR /

# install build tools
RUN apt-get update \
  && apt-get install -y gettext build-essential git gzip curl unzip vim \
      debootstrap syslinux isolinux squashfs-tools genisoimage memtest86+ pciutils \
      python python-pip python-dev make gcc autoconf libssl-dev dpkg-dev \
      ruby ruby-dev \
  && rm -rf /var/lib/apt/lists/*

# install pip and ansible
RUN  curl https://bootstrap.pypa.io/get-pip.py | python \
  && pip install --upgrade simplejson ansible markupsafe

# install fpm
RUN gem install fpm \
