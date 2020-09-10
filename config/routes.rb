Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :admins, controllers: {
    sessions:      'admins/sessions',
    passwords:     'admins/passwords',
  }

  namespace :admins do
    root 'homes#top'
  end


  root 'homes#top'
  resources :contacts, only:[:index]
  resources :menus, only:[:index]
  resources :news, only:[:index, :show]
end
