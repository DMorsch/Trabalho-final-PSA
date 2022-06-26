class RelatoriosController < ApplicationController
    def index
    end

    def andamento
        @qtd = User.count - 1
        @qtd_matriculados = TurmaUser.select('distinct(user_id)').count
        @creditos_matriculados = 0
        TurmaUser.select('distinct(user_id), turma_id').each do |tusr|
            @creditos_matriculados += tusr.turma.disciplina.creditos
        end
    end

    def alunos
        @alunos = User.where("users.coordenador = ?", false).paginate(page: params[:page], per_page: 7)
        @creditos_cursados = Hash.new
        @coeficiente_rendimento = Hash.new
        User.where("users.coordenador = ?", false).each do |aluno|
            creditos = 0
            aluno.historicos.where("historicos.aprovado = ?", true).each do |hist|
                creditos += hist.disciplina.creditos
            end
            @creditos_cursados[aluno.nome] = creditos
            @coeficiente_rendimento[aluno.nome] = aluno.coeficiente.round(2)
        end
    end

    def grade
        redirect_to grade_path(:id => params[:id])
    end
end