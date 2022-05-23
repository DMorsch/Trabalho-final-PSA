class Turma < ApplicationRecord
    belongs_to :disciplina
    has_many :turma_users
    has_many :users, through: :turma_users
end