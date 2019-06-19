### daily-diary

## Description

This project is a solution for the daily diary challenge set by Makers Academy. It demonstrates how Sinatra and PostgreSQL can be used together.

## Steps for Project Environment Setup

1) Initialise Bundler ("bundle init")
2) Specify gems for sinatra, rspec, code coverage, rubocop, and capybara in the gemfile.
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

# Setup a test database

13) Create a Hello unit test to check we can read from the database
14) Create a basic test database
```
$> psql
admin=# CREATE DATABASE "diary_test";
admin=# CREATE TABLE hello(id SERIAL PRIMARY KEY, message VARCHAR(60));
admin=# INSERT INTO hello VALUES (1, 'Hello World');
```
