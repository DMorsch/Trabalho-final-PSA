class Historico < ApplicationRecord
    belongs_to :user
    belongs_to :disciplina

    validates :nota, presence: true
    validates :aprovado, presence: true
end