export GADGET_PATH=$(script_dir)/gadget/



export PATH=$PATH:$HOME/.local/bin
export LIBRARY_PATH=$LIBRARY_PATH:$HOME/.local/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/.local/lib

export LGUYS_SCRIPTS="$HOME/LilGuys.jl/scripts"

export PATH=$PATH:$LGUYS_SCRIPTS

export JULIA_PKG_USE_CLI_GIT=true
export JULIA_CONDAPKG_BACKEND="Null"
export DWARFS_ROOT="$HOME/scratch/dwarfs"
export DWARFS_SIMS="$HOME/scratch/simulations"
export PATH=$PATH:$DWARFS_ROOT/scripts/niagara # add niagara submition scripts
export GADGET_PATH="$DWARFS_ROOT/gadget/"
export GADGET_SOURCE=$HOME/source/gadget4_agama

