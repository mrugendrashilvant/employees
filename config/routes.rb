Rails.application.routes.draw do
  resources :employee_details
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'employee_details#index'
end
