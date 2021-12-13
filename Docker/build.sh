#!/bin/bash

cd ..
cd Scripts/
cp AllFileNames.sh ../
cp FileOrDirectory.sh ../
cp LinesCount.sh ../
cp ReverseNum.sh ../

cd ..
mv AllFileNames.sh Docker/
mv FileOrDirectory.sh Docker/
mv LinesCount.sh Docker/
mv ReverseNum.sh Docker/


cd Docker
sudo docker build -t my-image . > /dev/null
sudo docker run -i -t my-image:latest

rm AllFileNames.sh
rm FileOrDirectory.sh
rm LinesCount.sh
rm ReverseNum.sh
