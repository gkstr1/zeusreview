# == Route Map
#
#                   Prefix Verb   URI Pattern                                            Controller#Action
#         new_user_session GET    /users/sign_in(.:format)                               devise/sessions#new
#             user_session POST   /users/sign_in(.:format)                               devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)                              devise/sessions#destroy
#            user_password POST   /users/password(.:format)                              devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)                          devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)                         devise/passwords#edit
#                          PATCH  /users/password(.:format)                              devise/passwords#update
#                          PUT    /users/password(.:format)                              devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)                                devise/registrations#cancel
#        user_registration POST   /users(.:format)                                       devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)                               devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)                                  devise/registrations#edit
#                          PATCH  /users(.:format)                                       devise/registrations#update
#                          PUT    /users(.:format)                                       devise/registrations#update
#                          DELETE /users(.:format)                                       devise/registrations#destroy
#       restaurant_reviews POST   /restaurants/:restaurant_id/reviews(.:format)          reviews#create
#    new_restaurant_review GET    /restaurants/:restaurant_id/reviews/new(.:format)      reviews#new
#   edit_restaurant_review GET    /restaurants/:restaurant_id/reviews/:id/edit(.:format) reviews#edit
#        restaurant_review PATCH  /restaurants/:restaurant_id/reviews/:id(.:format)      reviews#update
#                          PUT    /restaurants/:restaurant_id/reviews/:id(.:format)      reviews#update
#                          DELETE /restaurants/:restaurant_id/reviews/:id(.:format)      reviews#destroy
#              restaurants GET    /restaurants(.:format)                                 restaurants#index
#                          POST   /restaurants(.:format)                                 restaurants#create
#           new_restaurant GET    /restaurants/new(.:format)                             restaurants#new
#          edit_restaurant GET    /restaurants/:id/edit(.:format)                        restaurants#edit
#               restaurant GET    /restaurants/:id(.:format)                             restaurants#show
#                          PATCH  /restaurants/:id(.:format)                             restaurants#update
#                          PUT    /restaurants/:id(.:format)                             restaurants#update
#                          DELETE /restaurants/:id(.:format)                             restaurants#destroy
#              pages_about GET    /pages/about(.:format)                                 pages#about
#            pages_contact GET    /pages/contact(.:format)                               pages#contact
#                     root GET    /                                                      restaurants#index
#

Rails.application.routes.draw do
   

  devise_for :users
    
    resources :restaurants do 
         resources :reviews, except: [:show, :index]
    end
  get 'pages/about'

  get 'pages/contact'

 
   root 'restaurants#index'

end
