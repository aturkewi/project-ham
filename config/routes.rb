Rails.application.routes.draw do

  root 'comparisons#index'

  get '/login' => 'sessions#new'
  get '/auth/github/callback' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get 'comparisons/show' => 'comparisons#show', as: 'show_boroughs'
  resources 'boroughs', :only => [:show]
  resources 'search', :only => [:index]

  

  get '/hospitals/:id' => 'hospitals#show', as:'hospital'

  get '/communitygardens/:id' => 'community_gardens#show', as:'communitygarden'

  get 'flus/:id' => 'flus#show', as:'flu'

  get 'districts/:id' => 'districts#show', as:'district'

  get 'farmersmarkets/:id' => 'farmers_markets#show', as:'farmers_market'

  delete 'favorites/:id' => 'favorites#destroy', as:'favorite'

  resources :users, :only => [:show]

  post '/favorites/create' => 'favorites#create'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
