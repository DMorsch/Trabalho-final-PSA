class User < ApplicationRecord
    has_many :turma_users
    has_many :turmas, through: :turma_users
    has_many :historicos
    has_many :disciplinas, through: :historicos
    has_secure_password

    validates :nome, presence: true,
                     uniqueness: { case_sensitive: false },
                     length: { minimum: 3, maximum: 50 }
    validates :coordenador, presence: true
end