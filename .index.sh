pull-dotfiles() {
    cd $DOT_FILES_REPO && git pull && cd -
}

push-dotfiles() {
  cd $DOT_FILES_REPO && git add . && git commit -m"update dotfiles" && git push origin master && cd -
}

function update-ubuntu() {
  sudo apt update && sudo apt upgrade && sudo apt autoremove && sudo apt autoclean
}

function folders-size() {
  du -sk * | sort -nr | head -10
}

function remove_newlines() {
  tr -d '\n' < $1
}
