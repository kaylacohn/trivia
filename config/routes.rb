Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/sign_in' => 'devise/sessions#new'
  get '/sign_up' => 'devise/registrations#new'
end