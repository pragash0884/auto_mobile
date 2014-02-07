Store::Application.routes.draw do
   devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'user#index'
  get 'user/find_spare_items' => 'user#find_spare_items'
  get 'user/add_bill' => 'user#add_bill'
  get 'user/get_suppiler' => 'user#supplier'
  get 'user/update_brands' => 'user#show_brands'
  get 'user/update_brand_types' => 'user#show_brand_types'
  get 'user/update_spare_items' => 'user#show_spare_items'
  get '/admin/print/:bill_id' => 'admin#generate_report'
  #get 'user/switch_admin' => 'user#switch_admin'
  post 'user/save_invoice' => 'user#save_invoice'
  get 'user/save_supplier' => 'user#save_supplier'

  get 'admin/product_feed' => 'admin#product_feed'
  get 'admin/add_product_items' => 'admin#add_product_items'
  get '/admin/report' => 'admin#report'
  get '/admin/customer_report' => 'admin#get_customer_reports'
  get '/admin/report-hard-copy' => 'admin#customer_reports_pdf'
  get 'admin/update_brands' => 'admin#update_brands'
  get 'admin/add_brand_types' => 'admin#add_brand_types'
  get 'admin/update_spare_items' => 'admin#update_spare_items'
  get '/user/get_supplier' => 'user#get_supplier'



  resources :user
  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #resources :user do
  #member do
  #get 'index'
  #post 'show'
  # get 'add_bill'
  #end

  #collection do
  # get 'sold'
  #end
  #end

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