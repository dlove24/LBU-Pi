#!/bin/env sh
#
# Copyright (c) 2022 David Love <david.love@leedsbeckett.ac.uk>
#
# Permission to use, copy, modify, and distribute this software for any
# purpose with or without fee is hereby granted, provided that the above
# copyright notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
# WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
# MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
# ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
# WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
# ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
# OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
#
### Bootstrap script for installing Ansible. This aims to do just enough
### work on a raw image to get Ansible up and running: all other configuration
### should be done in Ansible itself

## NOTE: This script will bootstrap from the current directory (and for the
##       current user. It also assumes the current user has reasonable
##       privilliages for `sudo`, so that package installation will work

## Install a sane Python and Pip environment. To maintain sanity this will put
## Ansible into a Python virtual environment under `.venv` _as the (current)
## local user_.
sudo apt install python3-pip python3-venv -y

python3 -m venv .venv
source .venv/bin/activate

pip install -r venv_requirements.list

