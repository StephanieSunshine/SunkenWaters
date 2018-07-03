Rails.application.routes.draw do
  devise_for :users

  get '/', to: 'visitor#index'
  get '/rules', to: 'visitor#rules'

end
