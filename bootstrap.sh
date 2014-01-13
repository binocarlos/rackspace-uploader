#!/usr/bin/env bash
set -eo pipefail
export DEBIAN_FRONTEND=noninteractive
export UPLOADER_REPO=${UPLOADER_REPO:-"https://github.com/binocarlos/rackspace-uploader.git"}

if ! which apt-get &>/dev/null
then
  echo "This installation script requires apt-get. For manual installation instructions, consult https://github.com/binocarlos/quarry ."
  exit 1
fi

apt-get update
apt-get install -y git wget make curl software-properties-common

[[ `lsb_release -sr` == "12.04" ]] && apt-get install -y python-software-properties

cd ~ && test -d rackspace-uploader || git clone $UPLOADER_REPO
cd rackspace-uploader
git fetch origin

if [[ -n $UPLOADER_BRANCH ]]; then
  git checkout origin/$UPLOADER_BRANCH
elif [[ -n $UPLOADER_TAG ]]; then
  git checkout $UPLOADER_TAG
fi

make install

echo
echo "rackspace-uploader is installed!"