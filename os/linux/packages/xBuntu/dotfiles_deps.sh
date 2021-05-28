#!/bin/bash

sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install -y fzf rustc cargo

cargo install exa docpars delta