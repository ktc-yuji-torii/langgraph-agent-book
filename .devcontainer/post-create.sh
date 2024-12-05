#!/bin/bash

# bash auto completion
sudo apt-get update && sudo apt-get install bash-completion
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -O ~/.git-completion.bash
echo "source ~/.git-completion.bash" >> ~/.bashrc

# Use quotes around the variable to handle spaces in the path
git config --global --add safe.directory "/workspaces"


# install poetry
pip install --upgrade pip wheel setuptools werkzeug &&
    # pipを使ってpoetryをインストール
    pip install --no-cache-dir poetry &&
    poetry config virtualenvs.create false

poetry install
