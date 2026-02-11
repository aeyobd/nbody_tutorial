
# The environment


# Setting up software
The primary software needed to run N-body models is Gadget-4 and Agama. 

Agama is a library which can evaluate potentials, integrate orbits, and includes various other utilities for N-body dynamical modelling. 
Agama is to be installed seperately (see agama.software) and should be compiled with the same environment as gadget-4 and where software will be run. I also prefer the `agama.so` shared library to be located at `~/.local/lib/agama.so` for when we link Agama to Gadget, but you could also add the associated paths to `LIBRARY_PATH` and `LD_LIBRARY_PATH` shell variables. I use the default python installation typically but these libraries might also work in a (better practice) conda environment.

The `/gadget/` directory contains instructions on how to compile gadget-4 with a custom Agama plugin and my makefile options. Gadget depends on a few basic libraries: gcc, fftw-3, hdf5. The `modules.sh` loads these modules as needed on Trillium, but for other systems, the appropriate models or paths can be updated.


## Julia
In addition to some python scripts, I use Julia for most of my analysis, as a language which is efficient and by default vectorized (I also like Julia's language design more than python's!). To setup the Julia environment, I recommend the following steps
- Install Julia via `juliaup` (see julialang.org, but this is simply available through `curl -fsSL https://install.julialang.org | sh`)
- Install the necessary libraries. I use a few of my own (not currently publically regestered)  libraries. To install these, first add my registry (from `julia` prompt, press `]` to enter Pkg mode and then run `registry add github.com/aeyobd/RegularRegistry)
