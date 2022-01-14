Rails.application.routes.draw do
  root to: 'toppages#index'
  
  post 'users', to: 'users#create'
end
