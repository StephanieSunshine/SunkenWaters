Rails.application.routes.draw do
  devise_for :users
  get 'user/sign_in'
  get 'user/sign_up'
  get 'user/sign_out'
  get 'user/forget_email'
  get 'user/profile'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
