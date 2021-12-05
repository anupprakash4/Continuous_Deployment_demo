#!/bin/bash
set -x
heroku container:login
#login to container
heroku container:push web -a democicdapp2
#push the docker image
heroku container:release web -a democicdapp2
# release the application
heroku info -a democicdapp2
#get info about application
