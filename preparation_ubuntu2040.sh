sudo ln -s /usr/bin/python3 /usr/bin/python

# install repo
#sudo apt-get update
#sudo apt-get install repo

mkdir -p ~/.bin
PATH="${HOME}/.bin:${PATH}"
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/.bin/repo
chmod a+rx ~/.bin/repo

repo version
