Rails.application.routes.draw do
  get 'customer_details/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    resources :customer_form
    root 'customer_details#index'
end
