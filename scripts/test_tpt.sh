#!/bin/bash

data_root='/data/yfcc-tmp/data/TPT-datasets-softlinks'
testsets=$1
# arch=RN50
arch=OpenCLIP-ViT-B/16
bs=64
ctx_init=a_photo_of_a

python ./tpt_classification.py ${data_root} --test_sets ${testsets} \
-a ${arch} -b ${bs} --gpu 0 \
--tpt --ctx_init ${ctx_init}