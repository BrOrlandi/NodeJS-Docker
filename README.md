# NodeJS Dockerfile

This Docker image supports:
- [Bower](http://bower.io/) for dependency management.
- [Gulp](http://gulpjs.com/) for task automation.
- [Coffee-Script](http://coffeescript.org/) for compile coffe files.
- [PM2](https://github.com/Unitech/pm2) for Process Management for NodeJS applications.


## Running
Your need to create at least two volumes. One directory for your application files and other one for script files on the path `/scripts`. The scripts directory must have a `run.sh` in that script put the commands you need to get your application running.
The container will expose the port `8000`.

For instance you can create a script with these commands:
``` sh 
cd /apps/myapp
bower install --config.interactive=false --allow-root
npm install
gulp compile
pm2 start app.js
```
