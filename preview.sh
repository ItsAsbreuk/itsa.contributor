jshint src/**/*.js
jekyll build
yuidoc -q --themedir apitheme
browserify -r ./src/itsabuild:itsabuild -u node-win > ./site-preview/dist/itsabuild.js
uglifyjs ./site-preview/dist/itsabuild.js -c drop_debugger,drop_console,warnings=false -m >./site-preview/dist/itsabuild-min.js