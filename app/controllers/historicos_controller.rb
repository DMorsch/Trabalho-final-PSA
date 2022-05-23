class HistoricosController < ApplicationController
    def show
    end

    def index
        @historicos = Historico.where("user_id = ?", current_user.id).paginate(page: params[:page], per_page: 5)
    end
end