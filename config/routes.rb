Rails.application.routes.draw do
    root 'welcome#index'
    resources :users
    get '/signin' => 'sessions#new'
    post '/signin' => 'sessions#create'
    post '/signout' => 'sessions#destroy'
end