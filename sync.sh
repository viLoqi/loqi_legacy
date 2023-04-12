git pull

if git submodule status | grep --quiet '^-'; then
    git submodule update --init
fi

git submodule foreach git checkout main && git pull
