Rails.application.routes.draw do

  resources :point_de_vues
  get 'point_de_vues/:id/jadhere' => 'point_de_vues#jadhere', as: :jadhere_point_de_vue
  get 'point_de_vues/:id/unjadhere' => 'point_de_vues#unjadhere', as: :unjadhere_point_de_vue
  get 'point_de_vues/:id/edit' => 'point_de_vues#edit'
  post 'point_de_vues/:id/validation' => 'point_de_vues#validation', as: :validation_point_de_vue
  get 'sousmenu' => 'point_de_vues#menu_point_de_vue'
  # only: [:index, :new]
  # get 'point_de_vues' => 'point_de_vues#show'

  resources :scot_messages

  post 'scot_messages/:id/validation' => 'scot_messages#validation', as: :validation_scot_message
  get 'scot_messages/:id/scot_jadhere' => 'scot_messages#jadhere', as: :jadhere_scot_message

  get 'contributeurs_info/:id' => 'contributeurs#show', as: :contributeur_info

  root 'pages#intro'
  devise_for :contributeurs
  get 'animation' => 'pages#animation'
  get 'sondages/export' => 'sondages#export', as: :export_sondages
  resources :sondages
  resources :questionnaires, only: [:index, :show]

  get 'mentions' => 'pages#mentions'
  get 'merci' => 'pages#merci'
  get 'charte' => 'pages#charte'
  get 'comment-ca-marche' => 'pages#howto'
  get 'derniere-actualite' => 'actualites#last_actu', as: :last_actu
  post 'newsletter/inscription' => 'newsletter#inscription'

  resources :actualites
  get 'projets/:id/like' => 'projets#like', as: :like_projet
  get 'projets/:id/unlike' => 'projets#unlike', as: :unlike_projet
  resources :projets do
    resources :commentaires
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
