class User < ApplicationRecord
    has_many :turma_users
    has_many :turmas, through: :turma_users
    has_many :historicos
    has_many :disciplinas, through: :historicos
    has_secure_password

    validates :nome, presence: true,
                     uniqueness: { case_sensitive: false },
                     length: { minimum: 3, maximum: 50 }

    def pode_matricular?(turma_id, user_id, disciplina_id)
        !ja_matriculado?(turma_id, user_id) && cumpre_requisito?(user_id, disciplina_id) && !cursando_mesma_disciplina?(disciplina_id, user_id) && !cursando_com_mesmo_horario?(turma_id, user_id)
    end

    def coeficiente
        creditos = 0
        coef = 0
        carga = 0
        historicos.each do |hist|
            creditos += hist.disciplina.creditos
            carga += (creditos * 15)
            coef += hist.nota * (creditos * 15)
        end
        return 0 if carga == 0
        (coef/carga)
    end

    def ja_cursou?(disciplina_id, user_id)
        disc = Historico.find_by(disciplina_id: disciplina_id, user_id: user_id, aprovado: true)
        return true if disc
        return false
    end

    def ja_matriculado?(turm_id, usr_id)
        tusr = TurmaUser.find_by(turma_id: turm_id, user_id: usr_id)
        return true if tusr
        return false
    end

    def cumpre_requisito?(usr_id, disc_id)
        retorno = false
        reqs = Requisito.where(disciplina_id: disc_id)
        retorno = true if reqs.blank?
        reqs.each do |req|
            discreq = Historico.find_by(disciplina_id: req.disciplina_requisito_id, user_id: usr_id, aprovado: true)
            retorno = true if discreq
        end
        retorno
    end

    def cursando_mesma_disciplina?(disciplina_id, user_id)
        Turma.where(disciplina_id: disciplina_id).joins(:turma_users, :users).where("users.id = ?", user_id).exists?
    end

    def cursando_com_mesmo_horario?(turm_id, usr_id)
        retorno = false
        turmas_matriculadas = TurmaUser.where(user_id: usr_id)
        turma = Turma.find(turm_id)
        horarios_turma = [turma.horario.slice(0..2), turma.horario.slice(3..5), turma.horario.slice(6..8)]
        horarios_turma[1] = horarios_turma[0].slice(0) + "NP"if horarios_turma[1] == "NP"
        turmas_matriculadas.each do |tm|
            periodos_matriculados = [tm.turma.horario.slice(0..2), tm.turma.horario.slice(3..5), tm.turma.horario.slice(6..8)]
            periodos_matriculados[1] = periodos_matriculados[0].slice(0) + "NP" if periodos_matriculados[1] == "NP"
            x = 3
            while x >= 1
                retorno = true if horarios_turma[x-1] == periodos_matriculados[0]
                retorno = true if horarios_turma[x-1] == periodos_matriculados[1]
                retorno = true if (horarios_turma[x-1] == periodos_matriculados[2]) && !periodos_matriculados[2].blank?
                x = x - 1
            end
        end
        retorno
    end

end