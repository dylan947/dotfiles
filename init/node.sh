#!/usr/bin/env bash

# Install Node.js stable
if ! program_exists "n"; then
  pushd $HOME/.dotfiles/vendor/n
  make install
  n latest
else
  n latest
fi

# Install NPM global modules
if program_exists "npm"; then
  npm install -g \
    bower \
    ember-cli \
    gulp \
    supervisor \
    yo
fi