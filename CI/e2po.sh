#!/bin/sh

git clone --depth 1 https://github.com/OpenVisionE2/enigma2-openvision-sh4.git
cd enigma2-openvision-sh4
cd po
./updateallpo-multiOS.sh
mv -f *.po *.pot ..
cd ..
mv -f *.po *.pot ..
cd ..
rm -rf enigma2-openvision-sh4
mv -f *.po *.pot po

git add -u
git add *
git commit -m "Update po files using updateallpo-multiOS.sh using https://github.com/OpenVisionE2/enigma2-openvision-sh4"
