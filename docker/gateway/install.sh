#! /bin/bash
  
# exit if a command fails
set -e

comet_source_url=https://github.com/Gopusher/gateway/releases/download/0.1.2/comet-for-linux

# install curl (needed to install rust)
apt-get update && apt-get install -y wget

cd /usr/local/bin/

wget --no-check-certificate -O gopusher ${comet_source_url}

chmod u+x gopusher-comet

# cleanup package manager
apt-get remove --purge -y wget && apt-get autoclean && apt-get clean
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

mkdir /data
