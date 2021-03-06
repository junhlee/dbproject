Dbproject::Application.routes.draw do
  get "static_pages/home"
  get "static_pages/help"

  resources :sessions, only: [:new, :create, :destroy]

  resources :vendors

  resources :carts

  resources :products

  resources :wishlists

  resources :customers

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'static_pages#home'

  match '/customer_signup', to: 'customers#new', via: 'get'
  match '/vendor_signup', to: 'vendors#new',  via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  match '/add_to_cart', to: 'carts#add_to_cart', via: 'get'
  match '/remove_from_cart', to: 'carts#remove_from_cart', via: 'get'
  match '/product_listing', to: 'vendors#product_listing', via: 'get'
  match '/new_product_listing', to: 'vendors#new_product_listing', via: 'get'
  match '/add_random_product', to: 'vendors#add_random_product', via: 'get'

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
