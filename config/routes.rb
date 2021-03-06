Plumbingheating::Application.routes.draw do

  devise_for :bloggers
  resources :articles

  mount Ckeditor::Engine => '/ckeditor'
  resources :users 

  root 'static_pages#index'

  
  match '/', to: 'static_pages#index', via: 'get'
  #match '/services', to: 'static_pages#services', via: 'get'
  match '/schedule', to: 'static_pages#schedule', via: 'get'
  match '/schedule', to: 'static_pages#schedule', via: 'post'
  match '/specials', to: 'static_pages#specials', via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
  
  #match '/help', to: 'static_pages#help', via: 'get'
  #match '/residential-plumbing', to: 'static_pages#service_residential', via: 'get'
  #match '/commercial-plumbing', to: 'static_pages#service_commercial', via: 'get'
  #match '/retail-plumbing/', to: 'static_pages#service_retail', via: 'get'
  #match '/water-heater-installation', to: 'static_pages#service_waterheater', via: 'get'
  #match '/hydro-jetting', to: 'static_pages#service_hydrojetting', via: 'get'
  #match '/plumbing-repair', to: 'static_pages#service_plumbingrepairs', via: 'get'
  #match '/garbage-disposal', to: 'static_pages#service_garbagedisposal', via: 'get'
  #match '/about', to: 'static_pages#about', via: 'get'
  match '/heating', to: 'static_pages#heating', via: 'get'

  # under plumbing tab
  match '/emergencies', to: 'static_pages#plumbing_emergencies', via: 'get'
  match '/faucets', to: 'static_pages#plumbing_faucets', via: 'get'
  match '/frozen-pipes', to: 'static_pages#plumbing_frozen_pipes', via: 'get', as: :frozen_pipes
  match '/garbage-disposal', to: 'static_pages#plumbing_garbage_disposal', via: 'get', as: :garbage_disposal
  match '/shower-bathtabs', to: 'static_pages#plumbing_showers_bathtabs', via: 'get', as: :shower_bathtabs
  match '/sinks', to: 'static_pages#plumbing_sinks', via: 'get'
  match '/sump-pumps', to: 'static_pages#plumbing_sump_pumps', via: 'get', as: :sump_pumps
  match '/toilets', to: 'static_pages#plumbing_toilets', via: 'get'
  match '/water-heater', to: 'static_pages#plumbing_water_heater', via: 'get', as: :water_heater
  match '/water-pressure', to: 'static_pages#plumbing_water_pressure', via: 'get', as: :water_pressure

  #under drain tab
  #get '/drain-cleaning', to: 'static_pages#drain_cleaning', as: :drain_cleaning
  match '/drain-cleaning', to: 'static_pages#drain_cleaning', via: 'get', as: :drain_cleaning  
  match '/drain-replacement', to: 'static_pages#drain_replacement', via: 'get', as: :drain_replacement
  match '/drain-repair', to: 'static_pages#drain_repair', via: 'get', as: :drain_repair
  match '/backwater', to: 'static_pages#drain_backwater', via: 'get'
  match '/camera-inspection', to: 'static_pages#drain_camera', via: 'get', as: :camera_inspection
  match '/hydro-jetting', to: 'static_pages#drain_hydrojetting', via: 'get', as: :hydro_jetting
  match '/drain-sewer-clog', to: 'static_pages#drain_sewer_clog', via: 'get', as: :drain_sewer_clog

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
