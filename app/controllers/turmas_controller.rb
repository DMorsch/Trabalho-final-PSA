class TurmasController < ApplicationController
    before_action :require_user

    def show
    end

    def index
        @turmas = Turma.joins(:disciplina).search(params[:search], params[:tipo]).paginate(page: params[:page], per_page: 7)
    end
end