Rails.application.routes.draw do
  devise_for :users
  before_action :authenticate_user!

  get 'messages/index'

  root "messages#index"
end
