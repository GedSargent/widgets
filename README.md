# Widgets - The App For Widgets

## Setup

1. Pull down the app from version control
2. If you are developing on Windows, it's best to use a Linux bash terminal. An easy way to do this is by installing [Git Bash](https://gitforwindows.org/) on your machine.
3. Copy the contents of `.example.env.development` and paste into a new `.env.development` file
4. Copy the contents of `.example.env.test`, then paste into a new `.env.test` file.
   - We are fine to do this here in a demo app, but in a real production context make sure to keep these values secret.
5. `dx/build` - this will build a Docker image you will use to start a container in which development can happen
6. `dx/start` - this will use Docker Compose to start three containers: a linux dev box using the image you built in the previous step (which is where you will run Rails), Postgres, and Redis.
7. In another terminal, you can do `dx/exec bash` to get a prompt into the container where you will do dev work. You can also issue commands directly, e.g. `dx/exec rails --help`

## Running the app

- Start the app:

  ```bash
  dx/start
  ```

- Inside a second terminal, open docker shell:

  ```bash
  dx/exec bash
  ```

- Once inside the containerized shell, set up the app:

  ```bash
  bin/setup
  ```

- Run the app:

  ```bash
  bin/run
  ```

- In a third terminal, start the TailwindCSS watcher:

  ```bash
  dx/exec bin/rails tailwindcss:watch
  ```

## Tests and CI

1. Run `bin/ci` - contains all the tests and checks for the app
2. `tmp/test.log` will use the production logging format _not_ the development one

## Production

- All runtime configuration should be supplied in the UNIX environment
- Rails logging uses **lograge**. `bin/setup help` can tell you how to see this locally
