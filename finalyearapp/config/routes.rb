Finalyearapp::Application.routes.draw do
 
  resources :pics

  resources :images

  resources :carts do
	
  resources :lineitems
  end

  
  resources :lineitems
  
  resources :orders

  resources :products
  
  resources :shops

  get "shop/index"

  get "sessions/new"

  get "sessions/create"

  get "sessions/destroy"

  get "pages/home"

  get "pages/about"
  
  get "pages/cart"
  
  get "pages/help"

  get "greeting/hello"

  get "greeting/bye"

  resources :players

  resources :users

  resources :teams

  resources :managers

  resources :fixtures

  resources :competitions

  resources :clubs
  
  resources :sessions
  
  match'home', :to => 'layouts#application'
  match '/signin',  :to => 'sessions#new'
  match '/signout', :to => 'sessions#destroy'
  match'/showcart', :to => 'pages#cart'
  match '/showfixtures', :to => 'competitions#showFixtures'
  match '/showleaderboard', :to => 'competitions#showLeaderboard'
  match '/showcompresults', :to => 'competitions#showCompResults'
  match '/showteams', :to => 'clubs#showTeams'
  match '/showteam', :to => 'competitions#showTeam'
  match '/showmanagers', :to => 'teams#showManagers'
  match '/showplayersteam', :to => 'players#showTeam'
  match '/showplayers', :to => 'teams#showPlayers'
  

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'
   root :to => 'pages#home'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
