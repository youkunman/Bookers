Rails.application.routes.draw do

  get 'blogs/new'
  get '/' => 'book#top'
  get 'new' => 'blogs#new'

  post "blogs" => "blogs#create"
  get 'blogs' => 'blogs#index'
  get 'blogs/:id' => 'blogs#show', as: 'blog'
  get 'blogs/:id/edit' => 'blogs#edit', as: 'edit_blog'
 patch 'blogs/:id' => 'blogs#update', as: 'update_blog'
delete 'blogs/:id' => 'blogs#destroy', as: 'destroy_blog'
end
