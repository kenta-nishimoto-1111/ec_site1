Rails.application.routes.draw do
  get :mypage, to: 'mypage#index'
  resources :products, only: [:index, :show] 
  resources :orders, only: [:new, :create] do
    collection do
      get :confirm
      get :complete
    end
  end
  devise_for :users
  resources :tags, except: :show
  resources :books
  resources :line_items, only: :create 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
