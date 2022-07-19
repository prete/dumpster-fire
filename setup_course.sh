#!/usr/bin/env bash

set -eu

echo "[*] Getting files from GitHub..."
git clone --quiet --depth=1 https://github.com/cellgeni/scRNA.seq.course.git /tmp/scRNA.seq.course
echo "[*] Copying course files to $HOME/course..."
mv /tmp/scRNA.seq.course/course_files $HOME/course
mv /tmp/scRNA.seq.course/poststart.sh $HOME/course
cd $HOME/course
echo "[*] Downloading course data..."
./poststart.sh > /dev/null
echo "[*] Cleaning up..."
rm poststart.sh
rm -rf /tmp/scRNA.seq.course
echo "[*] Done!"
