Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :articles, only: [:show, :index, :new, :create, :edit, :update, :destroy]
  #The aboove line can be achieved with 'resources :articles' as all of the restful actions have been exposed
end
