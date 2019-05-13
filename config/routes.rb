Rails.application.routes.draw do
  root to: "questions#index"

  devise_for :users, :controllers => { registrations: 'registrations' }

  resources :questions do
    resources :choices

    patch '/answer' => 'questions#answer'
  end

  get 'my_questions' => 'questions#me'
  get 'answered_questions' => 'questions#answered_questions'
end
