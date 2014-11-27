#! /bin/bash
# convert eps to png
path="$1"
for f in $path*.eps; do
     # convert -density 300 -transparent white $f ${f%.*}.png;
     convert -density 300 $f ${f%.*}.png;
done