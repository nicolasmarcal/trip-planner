Rails.application.routes.draw do
  root to: "trips#index"
  resources :friends
  resources :trips do
    member do
      get :add_friend
    end
  end
end
