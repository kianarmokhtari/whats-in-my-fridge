Rails.application.routes.draw do
  resources :foods
  root :to => redirect('/foods')
end