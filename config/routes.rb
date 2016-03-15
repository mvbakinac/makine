Rails.application.routes.draw do
  root to: 'static_pages#Home'


  get "About" => 'static_pages#About'

  get "Gallery" => 'static_pages#Gallery'

  get "Links" => 'static_pages#Links'

  get "Contact" => 'static_pages#Contact'

  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resources :galleries do
    resources  :paintings
  end
end
