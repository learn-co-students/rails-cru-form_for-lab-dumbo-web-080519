Rails.application.routes.draw do
  resources :songs, except: :delete
  resources :genres, except: :delete
  resources :artists, except: :delete
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
