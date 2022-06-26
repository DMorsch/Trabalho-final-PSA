class Disciplina < ApplicationRecord
    has_many :turmas
    has_many :requisitos
    has_many :historicos
    has_many :users, through: :historicos

    validates :nome, presence: true
    validates :codigo, presence: true
    validates :creditos, presence: true

    def self.search(search, tipo)
        return Disciplina.where('disciplinas.nome LIKE ?', '%'+search+'%') if search && tipo == "name"
        return Disciplina.where('disciplinas.codigo LIKE ?', '%'+search+'%') if search && tipo == "codigo"
        Disciplina.all
    end
end