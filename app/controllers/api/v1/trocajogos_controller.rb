class Api::V1::TrocajogosController < Api::V1::BaseController

    def index
        trocajogo = Trocajogo.all
        respond_with trocajogo
    end

    def create
        trocajogo = Trocajogo.create(params[:trocajogo])

        if trocajogo.valid?
            respond_with(trocajogo, :location => api_v1_trocajogos_path(trocajogo))
        else
            respond_with(trocajogo)
        end
    end

    def show
        set_trocajogo
        respond_with @trocajogo
    end

    def destroy
        set_trocajogo
        @trocajogo.destroy
        respond_with "Item excluido com sucesso !!!"
    end

    private

    def set_trocajogo
        @trocajogo = Trocajogo.find(params[:id])
    end

end