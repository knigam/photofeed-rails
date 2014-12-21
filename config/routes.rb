Rails.application.routes.draw do
  resources :pictures do
      member do
          get 'image/:style', :action => 'image'
      end
  end

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'pictures#index'
end
