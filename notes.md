#Models & Routes 

## Create Models
- Manually create a file. populate dependencies 
- Rails g model 

- how can I create model instances 
  - seeds.rb
  - manually create data in our console 
  - faker gem 

## Rails Request Flow 
  - client sends a request
  - server receivers request and sends to router
  - controller will interact with the model, model with db
  - retrieve data and send that to view
  - 

## Instance Variables 
  - Instance Variables are only for those to be shared to the view from controller 



## Validations 
- What are validations 
  - make sure we dont have bad data
  - set certain requirements

- where do validations get defines
  - in the model at the very top of the file 

- native validations
  - foreign key in your table -> will set its wn requirement 
  - bcrypt will add required passwords 

## Defining Validations
  - go inside the model after associations
  - method validates: attr, helper 

## What invokes our validations
(lifecycle methods)
- Everytime we touch our database
- (lifecycle methods) .save, .create, .update
- (non-lifecycle methods)  .valid, .invalid?

## How to know we have erred
- @errors => .errors
- Only used once it has been persisted 