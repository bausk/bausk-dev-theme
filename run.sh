cd /var/lib/ghost/content/themes/ghost-theme
rm -rf node_modules
yarn install
nohup yarn run dev &
cd /var/lib/ghost
nodemon current/index.js --watch content/themes