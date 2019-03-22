Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root to: 'toppages#index'
    
    get 'login', to: 'sessions#new'
    post 'login', to: 'sessions#create'
    delete 'logout', to: 'sessions#destroy'
    
    get 'signup', to: 'users#new'
    
    #get 'users/:id/likes', to: 'users#likes'
    resources :users, only: [:index, :show, :new, :create] do
      member do
        get :followings
        get :followers
        get :likes
        #get :lovings
        #get :lovers
      end
    end
    
    resources :microposts, only: [:create, :destroy]
    resources :relationships, only: [:create, :destroy]
    resources :likes, only: [:create, :destroy]
end
