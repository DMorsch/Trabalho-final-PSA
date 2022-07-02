class TurmaUsersController < ApplicationController
    def create
        turma = Turma.find(params[:turma])
        if turma.vagas > turma.turma_users_count
            @turma_user = TurmaUser.create(user: current_user, turma: turma)
            flash[:notice] = "Matrícula realizada com sucesso!"
        else
            flash[:alert] = "Vagas esgotadas!"
        end
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