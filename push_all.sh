#!/bin/bash

#Github
git remote add all git@github.com:tomas-aragon/MIPS64_AC_2024.git ||

#Github
git remote set-url --add --push all git@github.com:tomas-aragon/MIPS64_AC_2024.git &&

git push --set-upstream all master &&

git push all master

### End...
