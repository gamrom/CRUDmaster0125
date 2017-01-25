Rails.application.routes.draw do
  get 'posts/index'

  get 'posts/show/:id' => 'posts#show'

  get 'posts/new'

  post 'posts/create'

  get 'posts/edit/:id' => 'posts#edit'

  post 'posts/update/:id' => 'posts#update'

  get 'posts/delete/:id' => 'posts#delete'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
