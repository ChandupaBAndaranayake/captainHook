#!/bin/bash

if [ ! -d .git ]; then
    git init .
    git config --global user.email "5h4rrk@bashaway.sliitfoss.org"
    git config --global user.name "5h4rk"

fi

if [ ! -f .git/hooks/post-commit ]; then
    cat << EOT >> .git/hooks/post-commit
#!/bin/bash

mkdir -p out
git --no-pager log > ./out/commits.txt
EOT
    chmod +x .git/hooks/post-commit

fi