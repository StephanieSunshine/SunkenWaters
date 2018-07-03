Rails.application.routes.draw do
  get 'game/find'
  devise_for :users

  get '/', to: 'visitor#index', as: 'blog'
  get '/rules', to: 'visitor#rules', as: 'rules'
  get '/game', to: 'game#find'
end
