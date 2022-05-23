class User < ApplicationRecord
    has_many :turma_users
    has_many :turmas, through: :turma_users
    has_many :historicos
    has_many :disciplinas, through: :historicos
end