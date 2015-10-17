class Api::V1::PropostajogosController < Api::V1::BaseController

    def index
        propjogo = Propostajogo.all
        respond_with propjogo
    end

    def create
        propjogo = Propostajogo.create(params[:propostajogo])

        if propjogo.valid?
            respond_with(propjogo, :location => api_v1_propostajogos_path(propjogo))
        else
            respond_with(propjogo)
        end
    end

    def show
        set_propostajogo
        respond_with @propjogo
    end

    def destroy
        set_propostajogo
        @propjogo.destroy
        respond_with "Item excluido com sucesso !!!"
    end

    private

    def set_propostajogo
        @propjogo = Propostajogo.find(params[:id])
    end

end