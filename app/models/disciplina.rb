class Disciplina < ApplicationRecord
    has_many :turmas
    has_many :historicos
    has_many :users, through: :historicos

    validates :nome, presence: true
    validates :codigo, presence: true
    validates :creditos, presence: true
end