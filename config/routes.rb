Rails.application.routes.draw do
  root 'dishes#index' #root_path
    get 'dishes/new' => 'dishes#new', as: :new_dish

    # create a dish
    get 'dishes/:id' => 'dishes#detail', as: :dish
    post 'dishes' => 'dishes#create'

    #upvote a dish
    post 'dishes/:id/upvote' => 'dishes#upvote', as: :upvote_dish

    #update a post
    #show the form
    get 'dishes/:id/edit' => 'dishes#edit'
    #patch the form
    patch 'dishes/:id' => 'dishes#update'

    #new_ingredient path
    get 'ingredient/new' => 'ingredient#new', as: :new_ingredient

    #create an ingredient
    get 'ingredient/:id' => 'ingredient#detail', as: :ingredient
    post 'ingredients' => 'ingredient#create'

    #update an ingredient
    #show the form
    get 'ingredient/:id/edit' => 'ingredient#edit'
    #patch the form
    patch 'ingredient/:id' => 'ingredient#update'

    #new_restaurant path
    get 'restaurant/new' => 'restaurant#new', as: :new_restaurant

    #create an restaurant
    get 'restaurant/:id' => 'restaurant#detail', as: :restaurant
    post 'restaurants' => 'restaurant#create'

    #update an restaurant
    #show the form
    get 'restaurant/:id/edit' => 'restaurant#edit'
    #patch the form
    patch 'restaurant/:id' => 'restaurant#update'

  # delete 'dishes/:id' => 'dishes#delete'


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
