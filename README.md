# _Animal Shelter API - Ruby Independent Project Six_

 The sixth independent project for the Ruby and Rails course for the coding school, Epicodus, written on August 23rd, 2019.

#### By _**Daniel Hongel**_

## Description

This application is an independent coding project from a Ruby coding class at Epicodus. This application is intended to demonstrate an understanding of Ruby and the Rails framework. This is a website an online store that carries specialty products.

## Setup/Installation Requirements

* _These instructions are aimed for MacOS, and may require slight adjustments if using another OS_
* _Clone this repository_
* _Open terminal and type **git clone [git link]**_
* _Navigate to project directory using **cd** in terminal_
* _Open project in text editor (atom)_
* _Type **bundle install** in terminal to load Gems_
* _You will need to have PostgresQL installed and running_
* _If you do not have Postgres running on your machine, please follow these steps:_
* _--> In another terminal tab, type $ **brew install postgres** (Mac OS)_
* _--> run $ **echo "export PGDATA=/usr/local/var/postgres" >> ~/.bash_profile**_
* _--> run $ **echo "export PGHOST=/tmp" >> ~/.bash_profile**_
* _--> run $ **source ~/.bash_profile**_
* _--> run $ **postgres** in order to start the postgres server_
* _--> If you encounter an error finding a user database, then run $ **createdb $USER**_
* _In terminal, while in the root project directory, run $ **rails db:create**_
* _To run tests, run $ **rspec** in terminal_
* _To run the program, run $ **rails s** in terminal_
* _Open your preferred web browser and navigate to localhost:3000_
* _The best way to make an API request will be to use a program such as Postman_

## Routes

For Creating or updating Animal objects, the required parameters are:
* name (case sensitive for storing but not retrieving)
* animal_type (Dog, Cat, or other)
* age ( Range must be from 1-30 years )
* breed (Specific breed)
* content (Comments or descriptions)

| Query | URL | Method | Return |
| ------- |:------:| ------:| ------:|
| All Animals | localhost:3000/v1/animals | GET | A list of all animals in shelter |
| Specific Animal by Id | localhost:3000/v1/animals/:id | GET | Target animal by id |
| Animals by Name | localhost:3000/v1/animals?name=Sam | GET | Entries for "Sam" or other name entered (case insensitive)|
| Animals by Animal Type | localhost:3000/v1/animals?animal_type=dog | GET | Entries for "dog" or "cat" or other animal_type entered (case insensitive) |
| Animals by Name and Animal Type | localhost:3000/v1/animals?name=Sam&animal_type=Cat | GET | Entries for "Sam" and "Cat" or other name or animal_type entered (case insensitive) |
| Random Animal | localhost:3000/random/ | GET | Returns one randomly selected animal |
| Create Animal Entry | localhost:3000/v1/animals/?name=bob&animal_type=cat&age=5&breed=Serrade petit&content=I love to be pet | POST | Http status :created and returns entry including id|
| Update Animal Entry | localhost:3000/v1/animals/?name=bob&animal_type=cat&age=5&breed=Serrade petit&content=I love to be pet | PUT | The animal entry for [ANIMAL NAME] has been updated successfully. |
| Delete Animal Entry | localhost:3000/v1/animals/57 | DELETE | The animal entry for bob has been successfully removed. |

## Specs

| Behavior | Input | Output |
| ------------- |:-------------:| -----:|
||||
||||

## Known Bugs

No known bugs

## Support and contact details

Please contact me if you encounter issues with this program, have suggestions, or would like to contribute to this or future projects. I can be reached at:  fatherofdharma@gmail.com.

## Technologies Used

* Ruby
* RubyGems
* Atom
* GitHub
* PostgreSQL
* Rails

### License
_This software is licensed under MIT license._

Copyright (c) 2019 **_Daniel Hongel_**
