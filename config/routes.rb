Rails.application.routes.draw do
  root 'books#index'
  resources :books do
    collection do
      get :autocomplete
    end
  end
end
