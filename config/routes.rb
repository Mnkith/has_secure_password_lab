Rails.application.routes.draw do
  

  get 'welcom/welcom'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

 resources :users, only: [:new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
