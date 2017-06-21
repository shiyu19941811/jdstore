Rails.application.routes.draw do
  devise_for :users

  namespace :admin do
    resources :products
  end

 root 'products#index'

 resources :carts do
    collection do
      delete :clean
        post :checkout
    end
  end

 resources :cart_items
 resources :orders

 resources :products do
   member do
     post :add_to_cart
   end
 end

 namespace :account do
   resources :orders
 end
end
