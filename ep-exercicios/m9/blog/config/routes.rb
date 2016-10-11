Rails.application.routes.draw do
  resources :articles
  
  get 'artigo/:id', to: 'blog#article'
  get 'categoria', to: 'blog#category'
  get 'busca', to: 'blog#search'

  root 'blog#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
