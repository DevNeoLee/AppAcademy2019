Rails.application.routes.draw do
  get '/' => 'blog#index'

  #root 'blog'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
