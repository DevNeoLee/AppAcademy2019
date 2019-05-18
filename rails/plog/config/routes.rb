Rails.application.routes.draw do
  root 'plog#index'
  get 'plog/create'
  get 'plog/delete'
  get 'plog/edit'
  get 'plog/update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
