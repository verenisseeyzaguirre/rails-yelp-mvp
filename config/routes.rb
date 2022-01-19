Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, except: [:edit, :update, :destroy] do
    collection do
      # 'resturants/top' otra ruta
      # get :top
    end
    member do
      # 'resturants/1/chef'
      # get :chef
    end
    resources :reviews, only: [:new, :create]
  end
end
