Rails.application.routes.draw do
  get 'carrito/carrito'

  get 'welcome/index'

  get 'welcome/politica_privacidad'

  get 'welcome/politica_devoluciones'

  get 'welcome/contactanos'
  
  devise_for :users, controllers:{registrations: "users/registrations", sessions:"users/sessions", passwords:"users/passwords"}

  resources :canciones

  resources :ventas

  resources :clientes

  resources :costumers

  resources :artistas

  resources :discos

  resources :artista

  resources :discograficas

  resources :generos
  get 'prueba/:id' =>  'generos#edit', as: :editar_genero
  
  get 'discos/generos/(:genero_id)' => 'discos#index', as: :discos_por_genero
  
  post 'canciones/agregar_carrito/:id' => 'discos#add_item_to_shipping_cart', as: :agregar_a_carrito
    
  root 'welcome#index' 
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
