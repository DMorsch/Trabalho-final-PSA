class PagesController < ApplicationController
    def home
    end

    def matriculados
        turmas = Turma.where(disciplina_id: params[:disciplina])
        @alunos = Array.new
        @nome = params[:nome]
        turmas.each do |turma|
            turma.users.each do |user|
                @alunos.push(user.nome)
            end
        end
    end

    def grade
        usr_id = params[:id].blank? ? current_user.id : params[:id]
        turma_users = TurmaUser.where(user_id: usr_id)
        @horarios = ["", "", "", "", "", "", "", "", "", ""]
        turma_users.each do |tusr|
            periodos = [tusr.turma.horario.slice(0..2), tusr.turma.horario.slice(3..5), tusr.turma.horario.slice(6..8)]
            periodos.each do |periodo|
                case periodo
                when "2LM"
                    @horarios[0] = tusr.turma.disciplina.nome
                when "3LM"
                    @horarios[1] = tusr.turma.disciplina.nome
                when "4LM"
                    @horarios[2] = tusr.turma.disciplina.nome
                when "5LM"
                    @horarios[3] = tusr.turma.disciplina.nome
                when "6LM"
                    @horarios[4] = tusr.turma.disciplina.nome
                when "2NP"
                    @horarios[5] = tusr.turma.disciplina.nome
                when "3NP"
                    @horarios[6] = tusr.turma.disciplina.nome
                when "4NP"
                    @horarios[7] = tusr.turma.disciplina.nome
                when "5NP"
                    @horarios[8] = tusr.turma.disciplina.nome
                when "6NP"
                    @horarios[9] = tusr.turma.disciplina.nome
                when "NP"
                    @horarios[tusr.turma.horario.slice(0).to_i + 3] = tusr.turma.disciplina.nome
                end
            end
        end
    end
end