if git submodule status | grep --quiet '^-'; then
    git submodule update --init
fi

git pull
git submodule foreach git switch main
git submodule foreach git pull
