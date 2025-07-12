Rails.application.routes.draw do
  devise_for :users


  root to: 'projects#index'


  resources :projects, only: [:index]
  resources :allocations, only: [:new, :create, :show]


  namespace :admin do
    get 'dashboard', to: 'dashboard#index'
  end


  get 'admin', to: redirect('/admin/dashboard')


  get "up" => "rails/health#show", as: :rails_health_check
end
