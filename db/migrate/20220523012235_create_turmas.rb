class CreateTurmas < ActiveRecord::Migration[6.1]
  def change
    create_table :turmas do |t|
      t.integer :disciplina_id
      t.integer :vagas
      t.string :horario
      t.timestamps
    end
  end
end
