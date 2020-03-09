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
As a user
So that I may view my favourite websites quickly
I would like to see a list of my bookmarks
```
## Domain Model
![Bookmark Manager domain model](./public/Bookmark-manager-dm.png)

| Component   | Responsibility                                | Refactor                                |
|------------ |---------------------------------------------  |---------------------------------------- |
| Model       | Encapsulate logic with relevant data          | Encapsulate bookmark data in a class    |
| View        | Display the result to a user                  | Show the bookmark data in a list        |
| Controller  | Get data from the model and put in the view   | Render bookmark data into to the view   |