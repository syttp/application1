Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources:books
 # get 'top' => 'books#top'
    root :to => 'books#top'
  #sget 'top' => 'books#top'
  post 'books' => 'books#create'
  get 'books' => 'books#index'
  get 'books/:id/edit' => 'books#edit'
  #get 'books/:id' => 'books#show'
  patch 'books/:id' => 'books#update',as:'update_book'
  delete 'books/:id' => 'books#destroy',as:'destroy_book'
end
