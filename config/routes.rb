Rails.application.routes.draw do
  match('/', {:via => :get, :to => 'teachers#index'})
  match('teachers', {:via => :get, :to => 'teachers#index'})
  match('teachers/new', {:via => :get, :to => 'teachers#new'})
  match('teachers/:id', {:via => :get, :to => 'teachers#show'})
  match('teachers', {:via => :post, :to => 'teachers#create'})
  match('teachers/:id/edit', {:via => :get, :to => 'teachers#edit'})
  match('teachers/:id', {:via => [:patch, :put], :to => 'teachers#update'})
  match('teachers/:id', {:via => :delete, :to => 'teachers#destroy'})

  match('courses', {:via => :get, :to => 'courses#index'})
  match('courses/new', {:via => :get, :to => 'courses#new'})
  match('courses/:id', {:via => :get, :to => 'courses#show'})
  match('courses', {:via => :post, :to => 'courses#create'})
  match('courses/:id/edit', {:via => :get, :to => 'courses#edit'})
  match('courses/:id', {:via => [:patch, :put], :to => 'courses#update'})
  match('courses/:id', {:via => :delete, :to => 'courses#destroy'})

  match('students', {:via => :get, :to => 'students#index'})
  match('students/new', {:via => :get, :to => 'students#new'})
  match('students/:id', {:via => :get, :to => 'students#show'})
  match('students', {:via => :post, :to => 'students#create'})
end
