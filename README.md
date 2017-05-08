# _Portland Restaurants to Try_

#### _This is a personal project I created to track restaurants in Portland that I would like to try!  Restaurants can be sorted by location and cuisine type.  Please note this application is built with a SQL database.  Follow the instructions below to ... May 7, 2017_

#### By _**Asia Kane**_

## Description



### Prerequisites

Web browser with ES6 compatibility
Examples: Chrome, Safari

Ruby
Bundler

## Specifications
| Behavior |  Input   |  Output  |
|----------|:--------:|:--------:|




## Setup/Installation Requirements

* _In a terminal window, clone this repository to your machine and navigate to the file path in your terminal._
* _Run $bundle_
* _Set up a development database and a test database in SQL using the Rake Gem and Active Record(see instructions below)_
* _Run $ruby app.rb_
* _Type localhost:4567 in a browser window to view application_
* _If you would like to make changes, open files in text editor of your choice_
* _Make changes as desired_
* _Make frequent commits with detailed comments_
* _Submit changes as pull request to Asia at akane0915 on Github_

## Database Setup Instructions

* _If Postgres is not installed on your computer, follow these instructions https://www.learnhowtoprogram.com/ruby/ruby-database-basics/installing-postgres-7fb0cff7-a0f5-4b61-a0db-8a928b9f67ef_
* _Open an new terminal window and run $postgres and leave it running_
* _In another terminal window, run $rake db:create_
* _Run $rake db:migrate_
* _Run $rake db:test:prepare_







* _In another terminal window, run $psql_
* _Type the following:_

* _CREATE DATABASE volunteer_tracker;_
* _\c volunteer_tracker_
* _CREATE TABLE projects (id serial PRIMARY KEY, title varchar);_
* _CREATE TABLE volunteers (id serial PRIMARY KEY, name varchar, hours int, project_id int);_
* _CREATE DATABASE volunteer_tracker_test WITH TEMPLATE volunteer_tracker;_

## Known Bugs
_N/A_

## Support and contact details
_I encourage you to update/make suggestions/refactor this code as you see fit. I am always open to improvement! Please contact Asia Kane at asialkane@gmail.com with questions._

## Technologies Used
* Ruby
* Sinatra
* SQL Relational Database Management System
* Active Record (ORM)
* Rake Gem
* Postgres Database Management System
* Psql
* Capybara Integration Testing
* Rspec Gem
* Pg Gem
* HTML
* CSS
* Bootstrap https://getbootstrap.com/
* ES6
* Jquery https://jquery.com/


### License
*This software is licensed under the MIT license*
Copyright © 2017 **Asia Kane**
