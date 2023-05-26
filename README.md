# Flix

## Table of contents

- [About <a name="about"></a>](#about-)
- [Tech Stack <a name="tech-stack"></a>](#tech-stack-)
- [Description <a name="Description"></a>](#Description-)
- [Setup <a name="Requirements"></a>](#Requirements-)
- [Installation <a name="Installation"></a>](#Installation-)


## About <a name="about"></a>

Flix is a full stack Ruby on Rails app to rate, review, and discover movies. It's really just a 'sandbox' app for me to try out some Ruby and Rails code.

## Tech Stack <a name="tech-stack"></a>

- Ruby 3.2.2
- Rails 7.0.4
- Sqlite3 (for development)
- PSQL (for deployment)
- AWS (for storing movie images)
- Capistrano (for deploying to my server)

## Description  <a name="Description"></a>

`A hosted version` of this app can be found at https://morning-brook-10617.herokuapp.com/
<br>
Flix is responsive with a mobile first approach.
<br>

1. Simply browse a list of movies, OR <br>
2. Sign up with an email, and a password to login to read, review, fave, and rate a movie. (Admins only can create a new movie listing at this time).<br>
3. The home page loads all the movies in the database.<br>
3. Select a movie to read a synopsis of the movie and optionally (must be signed in) write a review.<br>
4. Manage your profile info, including linking your externally hosted gravatar. <br> 

## Requirements <a name="Requirements"></a>

You will need Ruby version 3.2.2 or higher and Rails version 7.0.4 installed before being able to run this project on your local machine.

## Installation <a name="Installation"></a>

To run this project you will need to clone this repository onto your local machine.

```
$ git clone https://github.com/BitKoda/flix.git
```

Navigate inside the folder and install all dependencies by entering the following commands on your terminal window:

```
$ cd flix
$ bundle install
$ rails db:migrate
$ rails db:seed
```

To run the application locally enter:

```
$ bin/dev or rails server
```

The application will run in your local development environment on http://localhost:3000
