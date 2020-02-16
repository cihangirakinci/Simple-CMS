Rails.application.routes.draw do

  root 'demo#index'
  # get 'subjects/index'
  # get 'subjects/show'
  # get 'subjects/new'
  # get 'subjects/edit'
  # get 'subjects/delete'
  resources :subjects do
    
    member do
      get :delete
    end

  end

  get 'demo/index'
  get 'demo/hello'
  get 'demo/other_hello'
  get 'demo/lynda'

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
