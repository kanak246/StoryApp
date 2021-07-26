Rails.application.routes.draw do

  resources :text_stories
  # get 'home/index'
  root "home#index"
  get "home/audio"
  get "home/text"
  get "home/about"
  get 'home/explore'
  get "text_stories/hindi"
  get "text_stories/english"
  get "stories/akhbar_hindi"
  get "stories/akhbar_english"
  get "stories/rabbit_english"
  get "stories/rabbit_hindi"
  get "stories/swan_hindi"
  get "stories/swan_english"
  get "home/test"

    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
