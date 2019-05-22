Rails.application.routes.draw do
  get '/'=>'home#hello_world'
  get '/ondex'=>'home#ondex'
  get '/index'=>'home#index'
  get '/contact'=>'home#contact'
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
