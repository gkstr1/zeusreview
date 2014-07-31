# == Route Map
#
#          Prefix Verb   URI Pattern                     Controller#Action
#     restaurants GET    /restaurants(.:format)          restaurants#index
#                 POST   /restaurants(.:format)          restaurants#create
#  new_restaurant GET    /restaurants/new(.:format)      restaurants#new
# edit_restaurant GET    /restaurants/:id/edit(.:format) restaurants#edit
#      restaurant GET    /restaurants/:id(.:format)      restaurants#show
#                 PATCH  /restaurants/:id(.:format)      restaurants#update
#                 PUT    /restaurants/:id(.:format)      restaurants#update
#                 DELETE /restaurants/:id(.:format)      restaurants#destroy
#     pages_about GET    /pages/about(.:format)          pages#about
#   pages_contact GET    /pages/contact(.:format)        pages#contact
#            root GET    /                               restaurants#index
#

Rails.application.routes.draw do
  resources :restaurants

  get 'pages/about'

  get 'pages/contact'

 
   root 'restaurants#index'

end