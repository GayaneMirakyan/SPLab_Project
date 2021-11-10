#!/bin/bash

cd ..
cp AllFileNames.sh Docker/
cp FileOrDirectory.sh Docker/
cp LinesCount.sh Docker/
cp ReverseNum.sh Docker/

cd Docker
docker build -t my-image . > /dev/null
docker run -i -t my-image:latest

rm AllFileNames.sh
rm FileOrDirectory.sh
rm LinesCount.sh
rm ReverseNum.sh
