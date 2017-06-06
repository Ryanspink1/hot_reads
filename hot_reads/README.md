# URLockBox
Hot Reads is a program designed to interact with the URL Lock Box application. URL Lock Box makes post requests of links when they are read and relies on this application to count the number of times they are read.

Hot Reads serves both a view and an API endpoint of the top 10 most read links from URL Lock Box over the past 24 hours.

## Build

This application was built with rails 5.0.1

## Initial Setup

Clone the repository.
Run command `bundle install`
To serve program, run command `rails s` and navigate to url: `http://localhost:3000`

Please use port 3001 if running in conjunction with URL Lock Box

#Test Suite

Testing is run by RSpec and Capybara
To run test suite, run command  `rspec`

#API Documentation

API endpoints:

- `GET /api/v1/toplinks` returns a list of the top 10 links by read count over the past 24 hours.

- `POST /links` allows URL Lock Box to make a post request to create a link

#Production links

- Hot Reads: `https://finalhotreads.herokuapp.com`

- URL Lockbox: `https://urllockboxfinal.herokuapp.com/`

#Known Bugs

- No Known bugs.
