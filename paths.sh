
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

export PATH=$PATH:$HOME/.local/bin
export LIBRARY_PATH=$LIBRARY_PATH:$HOME/.local/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/.local/lib
export CPATH=$CPATH:$HOME/.local/include

export JULIA_NUM_PRECOMPILE_TASKS=4
export JULIA_PKG_USE_CLI_GIT=true
export JULIA_CONDAPKG_BACKEND="Null"
export JULIA_PROJECT=$SCRIPT_DIR
export LGUYS_SCRIPTS=$SCRIPT_DIR/scripts
export PYTHON="$SCRIPT_DIR/env/bin/python"

export GADGET_PATH="$SCRIPT_DIR/gadget/"

source $SCRIPT_DIR/env/bin/activate
