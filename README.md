# Tracking


The challenge consists of 2 applications that could run separately but were designed in the same app for ease of employing the test

#### Database

To test the app in development environment, you use this ENV variable for configure you PostgreSQL:

```sh
  database: ENV('DATABASE_NAME')  { 'tracking_test_development' }
  host:  ENV('DATABASE_HOST')  { 'localhost' }
  port: ENV('DATABASE_PORT')  { '5432' } 
  username: ENV.fetch('DATABASE_USERNAME')  { 'postgres' } 
  password: ENV.('DATABASE_PASSWORD')  { 'postgres' } 
```


### Installation

Unpack the zip file and type these commands:

```sh
$ bundle
$ yarn install
$ rake db:create db:migrate
$ rails s
```

#### Dashboard panel

To use the dashboard, simply create a new user and log in using the top menu bar on the right side

#### Docker

Project can be pulled from docker repository with:

```sh
$ docker pull hugocardososilva/tracking

```

#### Feature Mailer

After contact save into database app, it send a e-mail to all users registered into de system with information about contact.