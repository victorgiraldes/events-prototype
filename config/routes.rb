Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    namespace :api do
      namespace :v1 do
        resources :events, only: [:index, :create, :destroy]
        resources :comments, only: [:index, :create, :comments_reports]
        resources :reports, only: [:create]
      end
    end

end
