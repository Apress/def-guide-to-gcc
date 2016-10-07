#!/bin/bash

foo=$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/usr/test/lib:${LD_LIBRARY_PATH}

/usr/bin/ldd $*

$*

export LD_LIBRARY_PATH=$foo
