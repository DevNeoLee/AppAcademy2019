Rails.application.routes.draw do
  root 'author#index'
  get 'author/create'
  get 'author/delete'
  get 'author/edit'
  get 'author/update'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
