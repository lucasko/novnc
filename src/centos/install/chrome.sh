#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Install Chrome Browser"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
yum localinstall -y google-chrome-stable_current_x86_64.rpm
yum clean all
rm -rf google-chrome-stable_current_x86_64.rpm

#ln -s /usr/bin/chrome-browser-stable /usr/bin/google-chrome-stable
ln -s /usr/bin/google-chrome-stable /usr/bin/chrome-browser-stable

### fix to start chrome in a Docker container, see https://github.com/ConSol/docker-headless-vnc-container/issues/2
echo "CHROME_FLAGS='--no-sandbox --start-maximized --user-data-dir'" > $HOME/.chrome-browser.init
# add `source $INST_SCRIPTS/install/chrome-wrapper`string before last line
#sed -i '$isource $INST_SCRIPTS/chrome-wrapper' /usr/lib/chrome-browser/chrome-browser.sh
