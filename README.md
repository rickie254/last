<!-- ##  Real Estate
-it is a  real estate web application where users can look for properties according to their taste and liking online.

## Requirements
Ruby 2.7.4

NodeJS (v16), and npm

Heroku CLI

Postgresql

See Environment Setup below for instructions on installing these tools if you don't already have them.

## Setup
Start by cloning (not forking) the project template repository and removing the remote:

git clone git@github.com:rickie254/last.git
When you're ready to start building your project, run:

bundle install
rails db:create 
npm install --prefix client

You can use the following commands to run the application
rails s for backend
npm start --prefix client: run the frontend

## Environment Setup
Install the Latest Ruby Version
Verify which version of Ruby you're running by entering this in the terminal:

ruby -v
If it's not, you can use rvm to install a newer version of Ruby:

rvm install 2.7.4 --default
You should also install the latest versions of bundler and rails:

gem install bundler
gem install rails
Install NodeJS
Verify you are running a recent version of Node with:

node -v
If your Node version is not 16.x.x, install it and set it as the current and default version with:

nvm install 16
nvm use 16
nvm alias default 16
You can also update your npm version with:

npm i -g npm
Sign Up for a [Heroku Account][heroku signup]
You can sign up at for a free account at [https://signup.heroku.com/devcenter][heroku signup].

Install Postgresql
Heroku requires that you use PostgreSQL for your database instead of SQLite. PostgreSQL (or just Postgres for short) is an advanced database management system with more features than SQLite. If you don't already have it installed, you'll need to set it up.

PostgreSQL Installation for WSL
To install Postgres for WSL, run the following commands from your Ubuntu terminal:

sudo apt update
sudo apt install postgresql postgresql-contrib libpq-dev
Then confirm that Postgres was installed successfully:

psql --version
Run this command to start the Postgres service:

sudo service postgresql start
Finally, you'll also need to create a database user so that you are able to connect to the database from Rails. First, check what your operating system username is:

whoami
If your username is "ian", for example, you'd need to create a Postgres user with that same name. To do so, run this command to open the Postgres CLI:

sudo -u postgres -i
From the Postgres CLI, run this command (replacing "ian" with your username):

createuser -sr rickie
Then enter control + d or type logout to exit.

This guide has more info on setting up Postgres on WSL if you get stuck.

Postgresql Installation for OSX
To install Postgres for OSX, you can use Homebrew:

brew install postgresql
Once Postgres has been installed, run this command to start the Postgres service:

<!-- brew services start postgresql --> -->