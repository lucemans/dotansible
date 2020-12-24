#!/bin/bash

H="$(dirname $0)"
F="$H/../vars/vscode-extensions.yml"

# Remove Pre-Generated VSCODE Config
rm -rf $F

touch $F

# Put start in file
echo '---' >> $F
echo 'visual_studio_code_extensions:' >> $F

# Push basic vscode snap into file
# echo "snap install code --classic" >> ../scripts/vscode.sh 

# Push all extensions into file
code --list-extensions | sed -r 's/(.*)/ \- \1/g' >> $F

# Set font ligatures
# cat >> ../scripts/vscode.sh << EOF
# rm -rf ./tmp
# mkdir tmp
# cd tmp
# sudo apt-get install -y jq
# cp ~/.config/Code/User/settings.json ./1.json
# jq -c '.["editor.fontLigatures"] = true' ./1.json >./2.json
# jq -c ".[\"editor.fontFamily\"] = \"'Hack Nerd Font FC Ligatured', monospace\"" ./2.json >./3.json
# jq -c ".[\"workbench.colorTheme\"] = \"Panda Syntax\"" ./3.json >./4.json
# jq -c ".[\"workbench.iconTheme\"] = \"file-icons\"" ./4.json >./5.json
# cp ./5.json ~/.config/Code/User/settings.json
# cd ..
# rm -rf ./tmp
# EOF

# Make it executable
# chmod +x ../vars/vscode.sh