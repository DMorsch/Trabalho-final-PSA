class HistoricosController < ApplicationController
    before_action :require_user

    def show
    end

    def index
        @historicos = Historico.where("user_id = ?", current_user.id).joins(:disciplina).paginate(page: params[:page], per_page: 5)
    end
end