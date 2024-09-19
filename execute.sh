#!/bin/bash
echo "running!"
mkdir -p out

commit_hash=$(git rev-parse --short HEAD)
commit_message=S(git log -1 --pretty=%B)
commit_time=$(git log -1 --format=%cd)

echo "Commit: $commit_hash" >> out/commits.txt
echo "Message: $commit_message" >> out/commits.txt
echo "Time: $commit_time" >> out/commits.txt
echo "--------------------" >> out/commits.txt
