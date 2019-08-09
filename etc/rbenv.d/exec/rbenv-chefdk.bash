#!/usr/bin/env bash

if [[ "$RBENV_VERSION" = chef-workstation ]]; then
  eval "$(/opt/chef-workstation/bin/chef shell-init sh)"
  export PATH=`echo "$GEM_HOME" | /usr/bin/sed 's/chefdk/chefdk-workstation/'`
  export GEM_HOME=`echo "$GEM_HOME" | /usr/bin/sed 's/chefdk/chefdk-workstation/'`
  export GEM_PATH=`echo "$GEM_PATH" | /usr/bin/sed 's/chefdk/chefdk-workstation/'`
fi
