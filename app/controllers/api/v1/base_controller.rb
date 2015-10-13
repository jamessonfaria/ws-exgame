class Api::V1::BaseController < ActionController::Base
    respond_to :json
    before_filter :permitir_parametros

    # No Rails 4 existe um mecanismo que regula o envio de parametros
    # Utilizamos esse filtro para permitir o envio de qualquer tamanho de parametro
    def permitir_parametros
        params.permit!
    end

end