Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'address_books/index'
  get 'authorize' => 'auth#gettoken'
 
  
  
  resources :address_books do
    resources :networks
    resources :apromotions
    resources :addresslogs
    resources :networks
  end
  
  resources :reminders
  resources :statuses
  resources :promotions

  # root 'address_books#index'
  root 'home#index'
end
