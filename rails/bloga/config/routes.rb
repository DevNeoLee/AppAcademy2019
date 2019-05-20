Rails.application.routes.draw do
  root "bloga#index"
  get 'bloga/create'
  get 'bloga/delete'
  get 'bloga/edit'
  get 'bloga/update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
