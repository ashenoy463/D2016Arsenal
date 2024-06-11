#!/bin/sh
V=
mkdir -p release
cd src
ls -d */ | sed 's/\///' | xargs -I{} zip -r "../release/D2016Arsenal{}.pk3" . -i "./{}/*"
cd ..
cp README ./release/Readme.txt
cp Changelog.txt ./release/Changelog.txt
