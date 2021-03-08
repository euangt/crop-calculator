# Crop-Calculator for FutureFarm

Our farm manager needs assistance managing their order catalogue. They want to know when they need to order their next batch of each chemical, and how much it will cost them

Assumptions you can make
● 1 Litre of a given chemical covers 1 Hectare of a given crop
● This is true for all chemicals and all crops
● The farmer needs to order the chemical 1 week before the next spraying application
● The chemical cannot be stored, all of it must be used each time it is ordered
● A chemical can not be sprayed on a crop to which it is not tailored

## Stack

This application is built with Ruby on Rails with a PostgreSQL database, while it has also been deployed to Heroku. 

## Use:
The programme can be interacted with either locally or through the deployed version at https://crop-manager.herokuapp.com/crops

### Local use: 

#### This installation requires the use of:
* Github
* Rails
* Ruby

### Install Ruby and Rails with the follwing commands:
```shell
$ rbenv install 2.6.6
$ gem install rails
```

### Clone this repository into the relevant local directory
```shell
$ git clone https://github.com/euangt/crop-calculator
$ cd crop-calculator
```

### Once this is done, in the terminal run: 
```shell
$ bundle install # Will install the relevant gems (modules)
$ rails db:create db:migrate db:seed # Will constructs the database, schema and populate the database
$ rails s # This starts the server 
```

To view the results, Rails will run a server at http://localhost:3000/ where each crop and its chemical can be viewed. From here, each crop can be viewed with further details of its hectarage and next order details (litres and cost).

It is also possible to view all fields by apending /fields to either localhost or the heroku url, where a link can be followed to identify each field's specific details. 

## Code analysis:

For those unfamiliar with the code structure of Rails, it follows the MVC pattern and each part can be viewed at the following filepaths:

Models: /crop-calculator/app/models
Controllers: /crop-calculator/app/controllers
Views: /crop-calculator/app/views

## Database analysis: 

Schema can be found at /crop-calculator/db/schema.rb
Seeds can be found at /crop-calculator/db/seeds.rb

## Next Steps

Implementation of 
* an Order model and accompanying controller to allow the creation of a new order for chemicals. 
* an Update method within the fields controller to allow for the update of last_sprayed value and, if desired, alteration of the crop on the field. 

