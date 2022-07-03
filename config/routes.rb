Rails.application.routes.draw do
  root "pages#home"
  get 'login', to: "sessions#new"
  get "grade", to: "pages#grade"
  get "matriculados", to: "pages#matriculados"
  get "relatorios/andamento", to: "relatorios#andamento"
  get "relatorios/alunos", to: "relatorios#alunos"
  get "relatorios/grade", to: "relatorios#grade"
  post 'login', to: "sessions#create"
  delete 'logout', to: "sessions#destroy"
  resources :historicos, except: [:new, :destroy, :edit]
  resources :turmas, except: [:new, :destroy, :edit]
  resources :disciplinas, except: [:new, :destroy, :edit]
  resources :turma_users
end
