Rails.application.routes.draw do
  devise_for :users
<<<<<<< Updated upstream
  resources :users, only: [:new ]
=======
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
>>>>>>> Stashed changes
end
