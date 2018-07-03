Rails.application.routes.draw do
  devise_for :users

  get '/', to: 'visitor#index'
  get '/how_to_play', to: 'visitor#how_to_play'

end
