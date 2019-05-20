Rails.application.routes.draw do
  root 'timeline#index'
  post '/write' => 'timeline#write'
  post '/comment' => 'timeline#comment'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
