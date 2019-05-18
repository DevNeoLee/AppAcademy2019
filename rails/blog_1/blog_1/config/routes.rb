Rails.application.routes.draw do
  root 'blog#index'
  get '/blog/create' => 'blog#create'
  get '/blog/destroy' => 'blog#destroy'
  get '/blog/update'
  #== get '/blog/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
