#!/bin/sh
#diff is called by git with 7 parameters:
#path old-file old-hex old-node new-file new-hex new-node
"/usr/bin/bcompare" "$2" "$5" | cat
