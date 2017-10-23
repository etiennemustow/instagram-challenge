Rails.application.routes.draw do

  resources :images do
    resource :comments # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end

  get 'welcome/index'

  root 'welcome#index'
end
