Rails.application.routes.draw do

    namespace :api do
        namespace :v1 do
            resources :jogos, defaults: {format: 'json'}, only: [:index, :show]
            resources :perfils, defaults: {format: 'json'}, only: [:index, :create, :update, :show]
            resources :jogo_perfils, defaults: {format: 'json'}, only: [:index, :create, :destroy, :show]
            resources :trocajogos, defaults: {format: 'json'}, only: [:index, :create, :destroy, :update, :show]
            resources :propostajogos, defaults: {format: 'json'}, only: [:index, :create, :destroy, :update, :show]
        end
    end

end
