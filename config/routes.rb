Rails.application.routes.draw do
  get :mypage, to: 'mypage#index'
  devise_for :users
  resources :tags, except: :show
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
