# pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv virtualenv-init -)"

#My settings
if [ -f ~/bashrc/.bash_aliases ]; then
    . ~/bashrc/.bash_aliases
fi
if [ -f ~/bashrc/.bash_git ]; then
    . ~/bashrc/.bash_git
fi
