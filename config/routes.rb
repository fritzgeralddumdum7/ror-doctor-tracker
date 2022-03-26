Rails.application.routes.draw do
  resources :medicines
  resources :doctors do
    resources :prescriptions do
      resources :prescription_medicines, :path => 'medications', :as => 'medications'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
