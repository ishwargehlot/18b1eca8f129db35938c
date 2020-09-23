Rails.application.routes.draw do
  
  resources :tvshows
  resources :channals
  
  get 'tvshow/:id' ,to: 'tvshows#add_favourite' ,as: 'tv_shows_favourite'

  root 'page#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
