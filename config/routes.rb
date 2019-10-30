Rails.application.routes.draw do
  apipie
  root to: "apipie/apipies#index"
    namespace :api do
      namespace :v1 do
        resources :tipos do
          resources :cursos
        end
        resources :cursos do
          resources :tipo
        end
      end 
    end       
end
