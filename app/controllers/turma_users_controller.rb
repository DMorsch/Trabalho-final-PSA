class TurmaUsersController < ApplicationController
    def create
        turma = Turma.find(params[:turma])
        @turma_user = TurmaUser.create(user: current_user, turma: turma)
        flash[:notice] = "Matrícula realizada com sucesso!"
        redirect_to turmas_path
    end

    def index
        @turma_users = TurmaUser.where(user_id: current_user.id)
    end

    def destroy
        tusr = TurmaUser.find(params[:id])
        if tusr.destroy
            flash[:notice] = "Matrícula cancelada com sucesso!"
        end
        redirect_to turma_users_path
    end

end