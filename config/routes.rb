Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  root to: 'welcome#index'

  #user routes
  get "/sign_in", to: "sessions#new"

  post "/sessions", to: "sessions#create"

  get "/sign_up", to: "users#new", as: "sign_up" # not included in vagabond file

  delete "/logout", to: "sessions#destroy"

  #children routes
  get "/children", to: "children#index", as:"children"

  get "/children/:id", to: "children#show"

 get "/children/:id/edit", to: "children#edit"

  #video routes
  get "/videos", to: "videos#index", as: "videos"

  get "/videos/new", to: "videos#new", as: "new_video"

  post "/videos", to: "videos#create"

  get "/videos/:id", to: "videos#show"

  get "/videos/:id/edit", to: "videos#edit"

  post "videos/:id/include", to: "videos#include", as: "include_video"

  post "videos/:id/hide", to: "videos#hide", as: "hide_video"

  #resources
  resources :users, :children, :videos, :sessions

end


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

