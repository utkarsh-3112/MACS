Rails.application.routes.draw do
  root to: 'temp#main'
  get '/programmes', to: 'temp#programmes'
  get '/courses', to: 'temp#courses'
  get '/people', to: 'temp#people'
  get '/facilities', to: 'temp#facilities'
  get '/research-consultancy', to: 'temp#research_consultancy'
  get '/achievements', to: 'temp#achievements'
  get '/placement', to: 'temp#placements'
  get '/events', to: 'temp#events'
  get '/contact', to: 'temp#contact'
  get '/faculty/:name', to: 'temp#faculty'
  get '/research-scholars/:name', to: 'temp#research_scholars'



  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
