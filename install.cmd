set APP_NAME=app
call npm install express-generator -g
call express --view=pug %APP_NAME%
cd %APP_NAME%
call npm install

rem start the app natively (without process manager)
call set DEBUG=%APP_NAME%:* & npm start

rem installing nodemon to auto-reload the server on code change
::call npm install nodemon -g
::nodemon app.js

::installing process manager (strongloop, pm2 or forever)
::call npm install strongloop -g
::call npm install pm2 -g
::call npm install forever -g
pause