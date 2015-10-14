Rails.application.routes.draw do

    namespace :api do
        namespace :v1 do
            resources :jogos, defaults: {format: 'json'}, only: [:index]
            resources :perfils, defaults: {format: 'json'}, only: [:index, :create, :update]
        end
    end

end
