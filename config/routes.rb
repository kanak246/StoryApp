Rails.application.routes.draw do

  resources :text_stories
  # get 'home/index'
  root "home#index"
  get "home/audio"
  get "home/text"
  get "home/about"
  get 'home/explore'
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
