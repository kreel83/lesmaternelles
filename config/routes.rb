Rails.application.routes.draw do
  devise_for :users
  post 'enfants/:id/activites/updatelevel', to: 'activites#updatelevel', as: :enfant_update_level, defaults: {format: :json}
  post 'activites/update_reject', to: 'activites#update_reject', as: :update_reject, defaults: {format: :json}

  get 'activités/parametre', to: 'activites#parametres', as: :params_activites

  root to: 'pages#home'
  resources :correspondances
  resources :enfants do
    resources :activites


  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
