echo "\033[0;34mCloning Prezto\033[0m"
hash git >/dev/null && /usr/bin/env git clone --recursive https://github.com/NanoXD/prezto.git ~/.zprezto || {
  echo "git not installed"
  exit
}

echo "\033[0;34mLooking for an existing zsh config...\033[0m"
if [ -f ~/.zshrc ] || [ -h ~/.zshrc ]
then
  echo "\033[0;33mFound ~/.zshrc.\033[0m \033[0;32mBacking up to ~/.zshrc.pre-prezto\033[0m";
  mv ~/.zshrc ~/.zshrc.pre-prezto;
fi

echo "\033[0;33mSymlinking files from ~/.zprezto\033[0m";
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
source ~/.zshrc
