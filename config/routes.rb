Rails.application.routes.draw do
  devise_for :users
  resources :kanbans
  patch '/kanbans/:id/sort', to: 'kanbans#sort', as: "kanban_sort"
  root to: 'pages#home'
  get 'pages/about'

end
