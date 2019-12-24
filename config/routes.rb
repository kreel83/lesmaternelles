Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :enfants do
    resources :activites

  end
  post 'enfants/:id/activites/updatelevel', to: 'activites#updatelevel', as: :enfant_update_level, defaults: {format: :json}

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
