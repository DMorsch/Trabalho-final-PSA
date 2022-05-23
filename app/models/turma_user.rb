class TurmaUser < ApplicationRecord
    belongs_to :turma
    belongs_to :user
end