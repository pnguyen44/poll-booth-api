Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :surveys do
  #   resources :options
  # end
  resources :options, except: %i[new edit]
  resources :surveys, except: %i[new edit]
end
