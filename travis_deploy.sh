#!/usr/bin/env bash

set -e

SHA=`git rev-parse --verify HEAD`

git config user.name "$COMMIT_AUTHOR"
git config user.email "$COMMIT_AUTHOR_EMAIL"
git checkout --orphan gh-pages
git rm --cached -r -f .
echo "# Automatic build" > README.md
echo "Built pdf from \`$SHA\`. See https://github.com/durachain/whitepaper/ for details." >> README.md
echo "The generated pdf is here: https://durachain.github.io/whitepaper/whitepaper.pdf" >> README.md
echo '<html><head><meta http-equiv="refresh" content="0; url=whitepaper.pdf" /></head><body></body></html>' > index.html
mv build/whitepaper.pdf whitepaper.pdf
git add -f README.md index.html whitepaper.pdf
git commit -m "Built pdf from {$SHA}."

ENCRYPTED_KEY_VAR="encrypted_${ENCRYPTION_LABEL}_key"
ENCRYPTED_IV_VAR="encrypted_${ENCRYPTION_LABEL}_iv"
ENCRYPTED_KEY=${!ENCRYPTED_KEY_VAR}
ENCRYPTED_IV=${!ENCRYPTED_IV_VAR}
openssl aes-256-cbc -K $encrypted_81d85cdc1787_key -iv $encrypted_81d85cdc1787_iv -in deploykey.enc -out deploykey -d
chmod 600 deploykey
eval `ssh-agent -s`
ssh-add deploykey

git push -f "$PUSH_REPO" gh-pages
