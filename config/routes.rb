Rails.application.routes.draw do
  root "articles#index"
  resources :articles

  get '/:id', to: "articles#show"
  get '/:id/edit', to: "articles#edit"
  get '/new', to: "articles#new"
end
