Plumbingheating::Application.routes.draw do

  resources :users 

  root 'static_pages#index'

  #get "static_pages/index"
  #get "static_pages/services"
  #get "static_pages/schedule"
  #get "static_pages/specials"
  #get "static_pages/contact"
  #get "static_pages/blog"
  #get "static_pages/help"
  match '/', to: 'static_pages#index', via: 'get'
  match '/services', to: 'static_pages#services', via: 'get'
  match '/schedule', to: 'static_pages#schedule', via: 'get'
  match '/schedule', to: 'static_pages#schedule', via: 'post'
  match '/specials', to: 'static_pages#specials', via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
  match '/blog', to: 'static_pages#blog', via: 'get'
  match '/help', to: 'static_pages#help', via: 'get'
  match '/residential-plumbing', to: 'static_pages#service_residential', via: 'get'
  #match '/commercial-plumbing', to: 'static_pages#service_commercial', via: 'get'
  #match '/retail-plumbing/', to: 'static_pages#service_retail', via: 'get'
  match '/water-heater-installation', to: 'static_pages#service_waterheater', via: 'get'
  #match '/hydro-jetting', to: 'static_pages#service_hydrojetting', via: 'get'
  match '/plumbing-repair', to: 'static_pages#service_plumbingrepairs', via: 'get'
  #match '/garbage-disposal', to: 'static_pages#service_garbagedisposal', via: 'get'
  match '/about', to: 'static_pages#about', via: 'get'
  match '/heating', to: 'static_pages#heating', via: 'get'

  # under plumbing tab
  match '/emergencies', to: 'static_pages#plumbing_emergencies', via: 'get'
  match '/faucets', to: 'static_pages#plumbing_faucets', via: 'get'
  match '/frozen_pipes', to: 'static_pages#plumbing_frozen_pipes', via: 'get'
  match '/garbage_disposal', to: 'static_pages#plumbing_garbage_disposal', via: 'get'
  match '/shower_bathtabs', to: 'static_pages#plumbing_showers_bathtabs', via: 'get'
  match '/sinks', to: 'static_pages#plumbing_sinks', via: 'get'
  match '/sump_pumps', to: 'static_pages#plumbing_sump_pumps', via: 'get'
  match '/toilets', to: 'static_pages#plumbing_toilets', via: 'get'
  match '/water_heater', to: 'static_pages#plumbing_water_heater', via: 'get'
  match '/water_pressure', to: 'static_pages#plumbing_water_pressure', via: 'get'

  #under Drain tab
  match '/drain_cleaning', to: 'static_pages#drain_cleaning', via: 'get'
  match '/drain_replacement', to: 'static_pages#drain_replacement', via: 'get'
  match '/drain_repair', to: 'static_pages#drain_repair', via: 'get'
  match '/backwater', to: 'static_pages#drain_backwater', via: 'get'
  match '/camera_inspection', to: 'static_pages#drain_camera', via: 'get'
  match '/hydro_jetting', to: 'static_pages#drain_hydrojetting', via: 'get'
  match '/drain_sewer_clog', to: 'static_pages#drain_sewer_clog', via: 'get'


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
