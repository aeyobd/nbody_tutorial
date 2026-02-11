#!/bin/bash
# This script clones gadget4 and applies the patch to use Agama with gadget 4.
# Presently, this patch expects the agama.so library to be in $HOME/.local/lib/
# but this path could be edited in the makefile or changing the relevant compiler flags
git clone http://gitlab.mpcdf.mpg.de/vrs/gadget4
cd gadget4
patch -p0 < ../agama.patch
