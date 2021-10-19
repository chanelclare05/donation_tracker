
#where our routes live

Rails.application.routes.draw do
  get 'most_donor', to: 'users#most_donor', as: 'rich_donor'
  resources :organizations
  resources :users
  resources :donations
  get "hello_world", to: 'hello_world#hello_world'
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # ##Restrful Routes

  # #show all users
  # # get '/users', to: 'users#index'
  # get '/users' => 'users#index' #static route 

  # #show details of 1 user
  # get '/users/:id', to: 'users#show' 

  # #show new user form 
  # get '/users/new', to: 'users#new' 

  # #process the new user form submitted 
  # post '/users', to: 'users#create'

  # #show edit user form 
  # post '/users/:id/edit', to: 'users#new'

  # #process the edit user form submitted
  # patch '/users/:id', to: 'users#update'

  # #delete a user object 
  # delete '/users/:id', to: 'users#destroy'

  #macro to create all 7

end
