#one model that inherits from ActiveRecord and then all other models inherit from this model - this makes it more efficient as there arent constant calls to ActiveRecord


class ApplicationRecord < ActiveRecord::Base
  #the line below means: you will not be instantiated, creates boundaries for this class
  self.abstract_class = true
end


#what active record methods?
  #active record methods are class methods 

  ## query users table with an id of 1 
    #User.find(id) -> will return an error with it doesnt exist 
    #User.find_by(id: 1) OR User.find_by_id(1) -> will return nil and not break app when it doesnt exist 

  ## query user tavle by username
    #User.find_by(username: 'chanel') Or User.find_by_username("Chanel")
    #User.where? => condition needs to be met e.g. User.where(usernamename: "aysan")[0]

  ## Persisting data to the table 
    #User.save
    #User.create => new + save
  
  ## User.first => returns first user
  ## User.last => returns last user

  #User.pluk => plucks certain attributes (similar to select) => can create drop down selection boxes
