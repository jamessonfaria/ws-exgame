Rails.application.routes.draw do

    namespace :api do
        namespace :v1 do
            resources :jogos, defaults: {format: 'json'}, only: [:index, :show]
            resources :perfils, defaults: {format: 'json'}, only: [:index, :create, :update, :show]
            resources :jogo_perfils, defaults: {format: 'json'}, only: [:index, :create, :destroy, :show]
            resources :trocajogos, defaults: {format: 'json'}, only: [:index, :create, :destroy, :update, :show]
            resources :propostajogos, defaults: {format: 'json'}, only: [:index, :create, :destroy, :update, :show]

            get "usuarios_por_jogo/:id", :controller => "jogo_perfils", :action => "busca_usuarios_por_jogo", as: :usuarios_por_jogo
        end
    end

end
