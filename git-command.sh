#!/bin/bash
ESC=$(printf '\033')

git add -p
# echo commit message たのむ
read -p "commit message: " commitMessage
git commit "-m${commitMessage}"
read -p "Which branch?" branchToPush
if [ $branchToPush = 'master' ]; then
    read -p "本当に本当に master に push してええんか？ [y/n]" answerAboutMaster
    if [ $answerAboutMaster = 'y' ]; then
        echo "ほな $branchToPush に push するで〜"
        git push origin $branchToPush
    else
        echo "push しなかったで〜"
    fi
else
    read -p "${branchToPush} に push してええか？ [y/n]" answerAboutPush
    if [ $answerAboutPush = 'y' ]; then
        echo "ほな $branchToPush に push するで〜"
        git push origin $branchToPush
    else
        echo "push しなかったで〜"
    fi
fi
echo "以上やで〜"

# いったん色はやめる
# ちゃんと動くようにする
# 色つけるならread と echo分けた方がいいかもね