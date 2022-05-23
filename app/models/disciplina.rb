class Disciplina < ApplicationRecord
    has_many :turmas
    has_many :historicos
    has_many :users, through: :historicos
end