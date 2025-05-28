# config/routes.rb

Rails.application.routes.draw do
  get "sessions/new"
  root 'static_pages#home'

  # Add 'as:' to explicitly name the routes for your tests
  get '/help',    to: 'static_pages#help', as: 'help'    # Now generates help_path/help_url
  get '/about',   to: 'static_pages#about', as: 'about'   # Now generates about_path/about_url
  get '/contact', to: 'static_pages#contact', as: 'contact' # Now generates contact_path/contact_url

  # The /signup route also needs a name for users_new_url
  get '/signup',  to: 'users#new', as: 'signup' # Now generates signup_path/signup_url

  post '/signup', to: 'users#create' # This doesn't need an 'as:' because it's tied to the form submission

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users # This automatically generates show_user_path, edit_user_path, etc.
end