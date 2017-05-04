Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  root 'welcome#index'
  authenticated :users do
    root "docs#index", as: "authenticated_root"
  end

  resources :docs
end
