Rails.application.routes.draw do
  root 'blog#index'
  get 'blog/about'
  get 'blog/create'
  get 'blog/delete'
  get 'blog/edit'
  get 'blog/update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
