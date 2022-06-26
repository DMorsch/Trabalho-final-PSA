class DisciplinasController < ApplicationController
    def index
        @disciplinas = Disciplina.search(params[:search], params[:tipo]).paginate(page: params[:page], per_page: 7)
    end
end