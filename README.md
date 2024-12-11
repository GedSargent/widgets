# Widgets - The App For Widgets

## Setup

1. Pull down the app from version control
2. Make sure you have Postgres installed and running
   - Alternatively, you can use the Docker project at my [other repo](https://github.com/GedSargent/sustainable-rails-dev)
3. Run `bin/setup`

## Running the app

1. Run `bin/run`

## Tests and CI

1. Run `bin/ci` - contains all the tests and checks for the app
2. `tmp/test.log` will use the production logging format _not_ the development one

## Production

- All runtime configuration should be supplied in the UNIX environment
- Rails logging uses lograge. `bin/setup help` can tell you how to see this locally
