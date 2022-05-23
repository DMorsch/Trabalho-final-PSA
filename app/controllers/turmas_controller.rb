class TurmasController < ApplicationController
    def show
    end

    def index
        @turmas = Turma.paginate(page: params[:page], per_page: 7)
    end
end