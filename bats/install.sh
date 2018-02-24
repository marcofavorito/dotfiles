REPO_PATH=$ZSH/bats/bats
rm $REPO_PATH -rf
git clone https://github.com/sstephenson/bats $REPO_PATH
$REPO_PATH/install.sh $ZSH
