Rails.application.routes.draw do
  root "home#index"

  devise_for :admins, controllers: {
    sessions: 'admins/sessions'
  }
  namespace :admins do
  root "products#index"
    resources :products, only: %i[index show new create edit update destroy] do
      resource :completed, only: %i[create destroy], module: :products
    end
  end
end
