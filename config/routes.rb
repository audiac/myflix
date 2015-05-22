Myflix::Application.routes.draw do
  get 'ui(/:action)', controller: 'ui'

  get '/home', to: 'videos#index'

  resources :videos, only: [:show] do
    collection do
      get :search, to: 'videos#search'
    end
  end

  get '(:genre)', to: 'categories#show', as: 'category'

end
