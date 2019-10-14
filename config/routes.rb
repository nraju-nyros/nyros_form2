NyrosForm2::Engine.routes.draw do
 resources :users
# root :to => "failures#index"
root :to => "users#new"
end
