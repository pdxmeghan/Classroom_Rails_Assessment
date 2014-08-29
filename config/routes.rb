Rails.application.routes.draw do
  match('/', {:via => :get, :to => 'teachers#index'})
  match('/teachers', {:via => :get, :to => 'teachers#index'})
  match('/teachers/new', {:via => :get, :to => 'teachers#new'})
  match('/teachers/:id', {:via => :get, :to => 'teachers#show'})
  match('/teachers', {:via => :post, :to => 'teachers#create'})
end
