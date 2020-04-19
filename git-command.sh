#!/bin/bash
ESC=$(printf '\033')

git add -p
read -p "${ESC}[32mcommit message を書いて欲しいやで ${ESC}[m" commitMessage
git commit "-m${commitMessage}"
read -p "${ESC}[32mどの branch に push したいのか教えて欲しいやで ${ESC}[m" branchToPush
if [ $branchToPush = 'master' ]; then
    read -p "${ESC}[32m本当に本当に master に push してええんか？ [y/n] ${ESC}[m" answerAboutMaster
    if [ $answerAboutMaster = 'y' ]; then
        echo "${ESC}[32mほな $branchToPush に push するで〜${ESC}[m"
        git push origin $branchToPush
    else
        echo "${ESC}[32mpush しなかったで〜${ESC}[m"
    fi
else
    read -p "${ESC}[32m${branchToPush} に push してええか？ [y/n] ${ESC}[m" answerAboutPush
    if [ $answerAboutPush = 'y' ]; then
        echo "${ESC}[32mほな $branchToPush に push するで〜${ESC}[m"
        git push origin $branchToPush
    else
        echo "${ESC}[32mpush しなかったで〜${ESC}[m"
    fi
fi