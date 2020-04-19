#!/bin/bash
git add -p
read 'Enter commit message.' commitMessage
git commit -m$commitMessage
read 'Which branch?' branchToPush
if [ $branchToPush = 'master' ]; then
    read -p '本当に master に push してええんか？ [y/n]' answerAboutBranch
    if [ $answerAboutBranch = 'y' ]; then
        echo ほな $branchToPush に push するで〜
    else
        echo push しなかったで〜
    fi
else
    read -p '${branchToPush} に push してええか？ [y/n]' answerAboutPush
    if [ $answerAboutPush = 'y' ]; then
        echo ほな $branchToPush に push するで〜
        git push origin $branchToPush
    else
        echo push しなかったで〜
    fi
fi