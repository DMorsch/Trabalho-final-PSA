class Turma < ApplicationRecord
    belongs_to :disciplina
    has_many :turma_users
    has_many :users, through: :turma_users

    validates :vagas, presence: true
    validates :codigo, presence: true
    validates :horario, presence: true

    def self.search(search, tipo)
        return Turma.joins(:disciplina).where('disciplinas.nome LIKE ?', '%'+search+'%') if search && tipo == "name"
        return Turma.where('turmas.horario LIKE ?', '%'+search+'%') if search && tipo == "horario"
        return Turma.where('turmas.codigo LIKE ?', '%'+search+'%') if search && tipo == "codigo"
        Turma.all
    end
end