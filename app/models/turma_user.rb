class TurmaUser < ApplicationRecord
    belongs_to :turma, counter_cache: true
    belongs_to :user
end