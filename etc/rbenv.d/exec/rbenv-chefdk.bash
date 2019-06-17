#!/usr/bin/env bash

if [[ "$RBENV_VERSION" = chef-workstation ]]; then
  eval "$(/opt/chef-workstation/bin/chef shell-init sh)"
  export GEM_HOME=`echo "$GEM_HOME" | sed 's/chefdk/chefdk-workstation/'`
  export GEM_PATH=`echo "$GEM_PATH" | sed 's/chefdk/chefdk-workstation/'`
fi
