class HistoricosController < ApplicationController
    def show
    end

    def index
        @historicos = Historico.paginate(page: params[:page], per_page: 8)
    end
end