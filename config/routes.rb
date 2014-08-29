Rails.application.routes.draw do
  match('/', {:via => :get, :to => 'teachers#index'})
  match('/teachers', :via => :get, :to => 'teachers#index')
end
