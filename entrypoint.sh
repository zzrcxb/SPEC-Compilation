#!/bin/bash

# Add local user
# Either use the LOCAL_USER_ID if passed in at runtime or
# fallback

USER_ID=${LOCAL_USER_ID:-9001}

echo "Starting with UID : $USER_ID"
useradd --shell /bin/bash -u $USER_ID -d $SPEC -o -c "" -m user
cp /etc/sudoers /etc/sudoers.bak
echo 'user  ALL=(root) NOPASSWD: ALL' >> /etc/sudoers

export HOME=$SPEC

echo "Home is $HOME, SPEC is $SPEC"

# copy standard configurations
# echo "cd $HOME && source shrc" > $HOME/.bashrc
# echo "source /srv/ispec/bin/activate" >> $HOME/.bashrc
# cp /usr/local/compiler-config/*.cfg $HOME/config
su user
