class Turma < ApplicationRecord
    belongs_to :disciplina
    has_many :turma_users
    has_many :users, through: :turma_users

    validates :vagas, presence: true
    validates :codigo, presence: true
    validates :horario, presence: true

    def self.search(search)
        return Turma.joins(:disciplina).where('disciplinas.nome LIKE ?', '%'+search+'%') if search
        Turma.all
    end
end