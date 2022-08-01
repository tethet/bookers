Rails.application.routes.draw do
resources :books
root :to => 'homes#top'
#   get 'lists/new'
#   get 'lists' => 'lists#create'
#   post 'lists' => 'lists#create'
#   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
#   get '/top' => 'homes#top'
#                 #　＃はcontroller
#   get '/books' => 'lists#index'
#   get 'lists/:id' => 'lists#show', as: 'list'
#   get 'lists/:id/edit' => 'lists#edit', as: 'edit_list'
#   patch 'lists/:id' => 'lists#update', as:'update_list'
#   delete 'lists/:id' => 'lists#destroy', as: 'destroy_list'
 end
