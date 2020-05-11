Rails.application.routes.draw do
  resources :users
  resources :incorrect_answers
  resources :correct_answers
  resources :questions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
