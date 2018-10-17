# shortcuts for git
alias ga="git add"
alias gb="git branch"
alias gd="git diff --patience --ignore-space-change"
alias gh="git log --pretty=format:\"%Cgreen%h%Creset %Cblue%ad%Creset %s%C(yellow)%d%Creset %Cblue[%an]%Creset\" --graph --date=short"
alias gc="git checkout"
alias gs="git status"
alias gits="git commit -S -m $1"
alias gpom="git push origin master"
alias gpod="git push origin develop"

git config --global alias.pullall '!f(){ git pull "$@" && git submodule sync --recursive && git submodule update --init --recursive; }; f'
git config --global alias.syncUpdate '!f(){ git submodule sync --recursive && git submodule update --init --recursive; }; f'
git config --global alias.logg '!f(){ git log --graph --stat --decorate=full --color --word-diff=color -M -C --find-copies-harder -l100 --histogram "$@"; }; f'
git config --global alias.oldest-ancestor $'!zsh -c \'diff --old-line-format= --new-line-format= <(git rev-list --first-parent \"${1:-master}\") <(git rev-list --first-parent \"${2:-HEAD}\") | head -1\' -'