Rails.application.routes.draw do
  root to: 'welcome#index'
  resources :news
  get "/:year/:mm/:title.html", to: "welcome#article"
  devise_for :users, controllers: { sessions: 'users/sessions' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
