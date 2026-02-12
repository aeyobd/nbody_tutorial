#!/bin/bash

source paths.sh

set -xe

$LGUYS_SCRIPTS/combine_outputs.py $out_path/out/
$LGUYS_SCRIPTS/calc_centres.jl --r_max 1
$LGUYS_SCRIPTS/combine_outputs.py $out_path/out -c centres.hdf5
$LGUYS_SCRIPTS/mass_profiles.jl -k $profile_skip

cp $out_path/halo.toml .
