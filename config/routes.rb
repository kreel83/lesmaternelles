Rails.application.routes.draw do
  devise_for :users
  post 'enfants/:id/activites/updatelevel', to: 'activites#updatelevel', as: :enfant_update_level, defaults: {format: :json}

  root to: 'pages#home'
  resources :enfants do
    resources :activites

  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
