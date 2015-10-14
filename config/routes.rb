Rails.application.routes.draw do

    namespace :api do
        namespace :v1 do
            resources :jogos, defaults: {format: 'json'}
            resources :perfils, defaults: {format: 'json'}
        end
    end

end
