# Wordy

> A simple app that provides a count of the top 10 words of any URL.

## How its built
Wordy has been built using Python and Flask for the back end, with a redis queue to queue up requests. Results are stored to a postgresql database. The front end has been built using Angular, which will poll the back end for results and display them to the screen once they have been resolved.


## To use the app

1. Load the page
2. Enter a URL 
3. Hit Submit
4. Review the results

N.B. Large pages will take longer to parse. Your request will be add to the queue and once the result is available, will be rendered onto your page.

## To install the app locally
You will need Python 3.7, Redis Server and Postgres Server installed

1. Download the repo from Github
2. pip install the requirements from requirements.txt
3. Start the app server by running python manage.py runserver
4. Start the redis server by running redis-server in a new terminal window
5. Start the worker process by running python worker.py

## To install on Heroku

1. Set up a new Dyno in Heroku and ensure that you have set up a remote to point to it
2. Install Postgres on your Heroku Dyno
3. Install Redistogo on your Heroku Dyno
4. Push your code to Heroku, the build process will begin, incuding building the database tables
