#!/bin/bash
ESC=$(printf '\033')

read -p "${ESC}[32mcommit message を書いて欲しいやで ${ESC}[m" commitMessage
git commit "-m${commitMessage}"