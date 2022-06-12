class TurmaUsersController < ApplicationController
    def create
        turma = Turma.find(params[:turma])
        @turma_user = TurmaUser.create(user: current_user, turma: turma)
        flash[:notice] = "Matrícula realizada com sucesso!"
        redirect_to turmas_path
    end
end