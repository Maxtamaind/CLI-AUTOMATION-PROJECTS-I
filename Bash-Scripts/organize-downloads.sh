#!/bin/bash

echo "Organize Downloads folder..."
mkdir -p ~/Downloads/Images ~/Downloads/Documents ~/Downloads/Archives

mv ~/Downloads/*.jpg ~/Downloads/Images 2>/dev/null
mv ~/Downloads/*.png ~/Downloads/Images 2>/dev/null
mv ~/Downloads/*.pdf ~/Downloads/Documents 2>/dev/null
mv ~/Downloads/*.zip ~/Downloads/Archives 2>/dev/null

echo "Done !"
