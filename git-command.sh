#!/bin/bash
git add -p
echo commit message たのむ
read commitMessage
git commit '-m${commitMessage}'
echo Which branch?
read branchToPush
if [ $branchToPush = 'master' ]; then
    echo "本当に本当に master に push してええんか？ [y/n]"
    read -p "本当に本当に master に push してええんか？ [y/n]" answerAboutMaster
    if [ $answerAboutMaster = 'y' ]; then
        echo ほな $branchToPush に push するで〜
        git push origin $branchToPush
    else
        echo push しなかったで〜
    fi
else
    echo "${branchToPush} に push してええか？ [y/n]"
    read -p "${branchToPush} に push してええか？ [y/n]" answerAboutPush
    if [ $answerAboutPush = 'y' ]; then
        echo ほな $branchToPush に push するで〜
        git push origin $branchToPush
    else
        echo push しなかったで〜
    fi
fi
echo 以上やで〜