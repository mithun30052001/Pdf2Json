Rails.application.routes.draw do
  resources :pdfs, only: [:new, :create, :index, :show]
  root 'pdfs#index'
end
