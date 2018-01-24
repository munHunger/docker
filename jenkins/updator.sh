#!/bin/bash
cd /root/.jenkins
git config --global user.email "marcusmunger@hotmail.com"
git config --global user.name "Jenkins"
while true
do
    git pull
    sleep 5
    declare -i lines
    lines=`git status | wc -l`
    if [ $lines -gt 3 ]
    then
        git add .
        git commit -m "auto update from jenkins"
        git push
    fi
done