# README

## Pictrs Photo Application

This is a demo application in Ruby on Rails with photo upload and photo editing functionality.  It serves as a base for talking about programming and Rails with the Pictrs development team.

Here is the [*Job description*](https://assets.pictrs.com/downloads/jobs/2025-01-16%20Fullstack%20Entwickler%20f%C3%BCr%20Shopsystem.pdf)
by [Pictrs](https://pictrs.com/) we are preparing for with this app.

## Getting started
To get started with the app, clone the repo and then install the needed gems:
```
$ gem install bundler
$ bundle config set --local without 'production'  (for running the app only locally, we omit the pg gem for the postgres database, as we use sqlite instead)
$ bundle install
```

Next, migrate the database:

```
$ rails db:migrate
```
Finally, run the test suite to verify that everything is working correctly:
```
$ rspec
```
If the test suite passes, you'll be ready to run the app in a local server:
```
$ rails s
```
For more information, ask Andreas Raisl:
andreas.raisl@gmx.de
Tel: 0151-50904441
