Rails.application.routes.draw do
  root "pages#home"
  get 'login', to: "sessions#new"
  get "grade", to: "pages#grade"
  post 'login', to: "sessions#create"
  delete 'logout', to: "sessions#destroy"
  resources :historicos, except: [:new, :destroy, :edit]
  resources :turmas, except: [:new, :destroy, :edit]
  resources :turma_users
end
