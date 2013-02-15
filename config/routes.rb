Marketem::Application.routes.draw do
  root to: 'pages#home'
  get 'ui(/:action)', controller: 'ui'

  resources :contacts, only: [:index, :new, :create]
end
