Rails.application.routes.draw do
  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :show]
  end
  
  # Set the root route to the Users#index action
  root 'users#index'  
  
end
