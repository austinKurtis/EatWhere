# Eat Where

Welcome to Eat Where the fun way to take the guess work on where to eat. Add your favorite restaurants, create an event, let every one make their picks, and two hours before the event let us randomly select where you'll be dining. 

- [Get Started](#get-started)
- [Install](#install)
- [Setup Database](#setup-database)
  - [Build the Database](#build-the-database)
- [Non-Logged In Home Screen](#non-logged-in-home-screen)
- [New User Registration](#new-user-registration)
- [User Information View](#user-information-view)
- [User Edit View](#user-edit-view)
- [Add New Restaurant View](#add-new-restaurant-view)
- [Your Restaurants View](#your-restaurants-view)
- [Single Restaurant View](#single-restaurant-view)
- [Edit Restaurant View](#edit-restaurant-view)
- [Add New Event View](#add-new-event-view)
- [All Events View](#all-events-view)
- [Your Events View](#your-events-view)
- [Single Event View](#single-event-view)
- [Edit Event View](#edit-event-view)
- [Report Bugs](#report-bugs)
- [Meet The Dev](#meet-the-dev)

## Get Started
    To run this app on your local machine, these are the installation.

    First clone the repository from GitHub with the link below

    ```
    git clone https://github.com/austinKurtis/EatWhere.git
    cd EatWhere
    ```
### Install
    Current required gems for this app:
        'rails', '~> 5.1.4'
        'sqlite3'
        'sass-rails', '~> 5.0'
        'bootstrap', '~> 4.0.0.alpha6'
        'font-awesome-sass'
        'autoprefixer-rails', '~> 7.2', '>= 7.2.2'
        'sass', '~> 3.5', '>= 3.5.3'
        'sorcery'

    To get the needed gems to run this app. From the commandline: 
    ```
    rails bundle install 
    ```

### Setup Database
    After cloning or forking the repo and running bundle install, in terminal, run the following code to setup the database. The current confiruation adds 5 new tables.

**Build the Database**
    ```
    rails db:migrate
    ```
### Non-Logged In Home Screen
    This app uses sorcery for user control and login. The landing page lets you register a new account or log into an existing one. 
        To create a new member click register.
        To login hit the dropdown in the top right corner to enter the email and password.

### New User Registration
    New Users must enter the following:
        First Name
        Last Name
        Phone Number
        Email Address
        Passord
        Password Confirmation

    The email address is checked for uniqueness to avoid duplicate user information.
### User Information View
    This view will display the following information of the current user:
        First Name
        Last Name
        Phone Number
        Email Address
        Edit Button

### User Edit View
    This view allows the user to edit their profile information and change the password.

### Add New Restaurant View
    This view is where the user can add a new restaurant to their profile.
        Form input includes:
        Name
        Location
        Description
        Phone Number
        Average Meal Price

### Your Restaurants View
    A table list of all of your added restaurants.
        Name
        Location
        Description
        Phone
        Average Price
        Show, Edit Delete buttons

### Single Restaurant View
    A table list of a single restaurant.
        Location
        Description
        Phone
        Average Price
        Edit 

### Edit Restaurant View
    This view is where the user can edit an existing restaurant on their profile.
        Form input includes:
        Name
        Location
        Description
        Phone Number
        Average Meal Price

### Add New Event View
    This view is where the user can add a new event to their list of events.
        Form input includes:
        Name
        Time/Date
        Description

### All Events View
    A table list of all of current events.
        Event Name
        Event Time/Date
        Show/Edit/Delete Buttons

### Your Events View
    A table list of all of your current events.
        Event Name
        Event Time/Date
        Show/Edit/Delete Buttons

### Single Event View
    A table list of a single event.
        Edit
        Join
        Add Restaurant
            Disapears after one added
        Choose winning restaurant
            Becomes active 2 hours before the event start
        Show Winning Restaurant
            Shows after winning restaurant is chosen.

### Edit Event View
    This view is where the user can edit an existing event on their profile.
        Form input includes:
        Name
        Time/Date
        Description

## Report Bugs
Create an [issue report](https://github.com/austinKurtis/EatWhere/issues/new)

## Meet The Dev
- [Austin Kurtis](http://austinkurtis.com/)

