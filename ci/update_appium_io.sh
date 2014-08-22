git clone https://github.com/moizjv/appium.io.git
cd appium.io

rake install
bundle install
bundle exec rake master_build
git checkout gh-pages
git config user.name $GIT_NAME
git config user.email $GIT_EMAIL
git config credential.helper 'store --file=.git/credentials'
git remote set-url origin "https://${GH_TOKEN}@github.com/moizjv/appium.io"
echo "https://${GH_TOKEN}:@github.com" > .git/credentials
git add .
git commit -m "test-travis"
git remote show origin
git push origin gh-pages
