

export PATH=$PATH:$HOME/.local/bin
export LIBRARY_PATH=$LIBRARY_PATH:$HOME/.local/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/.local/lib
export CPATH=$CPATH:$HOME/.local/include

export JULIA_NUM_PRECOMPILE_TASKS=4
export JULIA_PKG_USE_CLI_GIT=true
export JULIA_CONDAPKG_BACKEND="Null"

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
export GADGET_PATH="$SCRIPT_DIR/gadget/"

source env/bin/activate
