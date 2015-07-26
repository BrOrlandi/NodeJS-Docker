cd /apps/StreamPanel
bower install --config.interactive=false --allow-root
npm install
gulp compile
pm2 start server.js --no-daemon