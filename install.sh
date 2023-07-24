sudo apt-get update && sudo apt-get upgrade -y

sudo apt-get install curl -y
sudo apt-get install git -y

echo "Try to install pyenv"
curl https://pyenv.run | bash

exec $SHELL 

echo "pyenv successfully instaled"
pyenv -version

echo "install latest python 3.11"
pyenv install 3.11

echo "Try to install poetry"
curl -sSL https://install.python-poetry.org | python3 -

echo ". ~/bashrc/.bashrc" >> ~/.bashrc

