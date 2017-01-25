Rails.application.routes.draw do
    root 'messages#index'
    resources :users
    devise_for :users, :path_prefix => 'd'
    get 'users/:id' => 'users#show'

    resources :messages do
        resources :comments
    end
end
