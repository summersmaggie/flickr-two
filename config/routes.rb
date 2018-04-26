Rails.application.routes.draw do
  root :to => 'layouts#index'

  devise_for :users

  resources :questions do
    resources :answers
  end

  resources :images do
    resources :comments
  end 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
