# Bookmark manager project
Makers Week 4 afternoon challenge.

**Tech used**:


## Project requirements
* Show a list of bookmarks
* Add new bookmarks
* Delete bookmarks
* Update bookmarks
* Comment on bookmarks
* Tag bookmarks into categories
* Filter bookmarks by tag
* Users are restricted to manage only their own bookmarks

### User stories

```
As a time-pressed user
So that I may view my favourite websites quickly
I would like to see a list of my bookmarks

As a time-pressed user
So that I can save a website
I would like to add the site's address and title to bookmark manager
```
## Domain Model
![Bookmark Manager domain model](./public/Bookmark-manager-dm.png)

| Component   | Responsibility                                | Refactor                                |
|------------ |---------------------------------------------  |---------------------------------------- |
| Model       | Encapsulate logic with relevant data          | Encapsulate bookmark data in a class    |
| View        | Display the result to a user                  | Show the bookmark data in a list        |
| Controller  | Get data from the model and put in the view   | Render bookmark data into to the view   |


## Installation instructions
**Setting up the database**
1. Connect to psql
2. Create the database using the psql command `CREATE DATABASE bookmark_manager;`
3. Connect to the database using the pqsl command `\c bookmark_manager;`
4. Run the query we have saved in the file `01_create_bookmarks_table.sql`

**Installing the program**
1. Requires Ruby. Instructions to install are [here](https://www.ruby-lang.org/en/documentation/installation/).
2. Fork this repo, and clone to your local machine
3. Run the command `gem install bundle`
4. When the installation completes, run `bundle` 
5. Navigate to the root folder and input 
```rackup```
This will show you the port that you should use in your browser (in this case it is `port=9292`).
6. This program requires Firefox. Input the following into your Firefox brower:
```http://localhost:9292/```