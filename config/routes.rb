BarterLi::Application.routes.draw do
  root 'public#welcome'
  get '/index', to: 'public#index'
  get '/profile', to: 'users#edit_profile', as: 'edit_profile'
  patch '/profile', to: 'users#update_profile', as: 'update_profile'
  post '/register', to: 'public#register_email', as: 'register_email'
  get '/collaborate', to: 'public#collaborate', as: 'collaborate'
  get '/notifications', to: 'notifications#user_notifications', as: 'user_notifications'
  get '/search', to: 'search#search_books', as: 'search'
  devise_for :users 
  
  #books controller
  get '/my_books', to: 'books#my_books', as: 'my_books'
  resources :books 
  resources :tags
  resources :barters do
    resources :notifications
  end

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
