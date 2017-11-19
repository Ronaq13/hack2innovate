Rails.application.routes.draw do
  get 'list/lending_appliction'
  get 'list/borrowing_application'
  post 'list/particular_item/:contract_id', to: 'list#particular_item'


  get 'contract/lend'

  get 'contract/borrow'
  post 'contract/make_borrow'
  post 'contract/make_lend'



  root to: 'landing#index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
