#!/bin/bash
haloname="nfw_1e4"
julia ../scripts/rescale_nfw.jl ../halos/$haloname.hdf5 -n ../halos/$haloname.toml -p halo.toml -o initial.hdf5 
