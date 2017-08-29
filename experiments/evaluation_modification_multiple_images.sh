#!/bin/bash

if [ "$#" -lt "2" ]; then
    echo "usage:\n\t$0 number max_corner_displacement"
    exit 1
fi

n=$1
L=$2

rm evaluation_modification -r

img=../input/homography2.png
dir=fruit
rm -r  $dir
./evaluation_modification.sh $img $n $L
./evaluation_modification_latex.sh > ${dir}.txt
mv evaluation_modification $dir

img=../input/lena_nb.png
dir=lena
rm -r $dir
./evaluation_modification.sh $img $n $L
./evaluation_modification_latex.sh > ${dir}.txt
mv evaluation_modification $dir

img=../input/traffic.png
dir=traffic
rm -r $dir
./evaluation_modification.sh $img $n $L
./evaluation_modification_latex.sh > ${dir}.txt
mv evaluation_modification $dir