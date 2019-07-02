### daily-diary

## Description

This project is a solution for the daily diary challenge set by Makers Academy. It demonstrates how Sinatra and PostgreSQL can be used together.

## How to Use

# Set up the Project

Clone this reposistory and run bundle.

# Set up the Database Environment

```
$> psql
admin=# CREATE DATABASE "diary_test";
admin=# CREATE DATABASE "diary";
admin=# \c << insert db name here >>;
```
To create the database structure, run the scripts in the db/migrations folder.

# To run the App

```
rackup -p 3000
```

# To Run the Tests & Coverage

```
rspec
```

# To run the Code Quality Tool

```
rubocop
```

## Development Process & Approach

For reference, below are listed detailed steps I took to create a working environment.

# Steps taken for Project Environment Setup

1) Initialise Bundler ("bundle init")
2) Specify gems for sinatra, rspec, rake, code coverage, rubocop, and capybara in the gemfile.
3) Install gems.
4) Add a rubocop.yml file

5) Initialise rspec ("rspec --init").
6) Update .rspec output options for colour and format
7) Configure the tests with required code, environment variables, reference to the controller app, and code coverage (spec_helper.rb)

8) Folder structure (views, lib)

9) Create a basic sinatra controller app file with one route (app.rb)
10) Configure rackup to run the app (config.ru)
11) Create a single feature test for "Hello World"
12) Implement feature using a view.
13) Create a basic test database
```
$> psql
admin=# CREATE DATABASE "diary_test";
admin=# \c diary_test;
admin=# CREATE TABLE hello(id SERIAL PRIMARY KEY, message VARCHAR(60));
```
14) Run a database setup method which runs TRUNCATE before each test. (setup_test_database.rb)
15) Add a Hello World model class to read message from the database.
16) Add a Hello World feature to display message via a view.
17) Further incremental changes to the database can be found in the migrations folder.
