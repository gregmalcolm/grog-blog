GrogBlog::Application.routes.draw do
  devise_for :users
  devise_scope :user do
    get 'admin', to: "devise/sessions#new"
    get 'logout', to: "devise/sessions#destroy"
    get 'signout', to: "devise/sessions#destroy"
  end

  resources :posts

  root 'posts#index'
end
