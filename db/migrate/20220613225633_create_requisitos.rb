class CreateRequisitos < ActiveRecord::Migration[6.1]
  def change
    create_table :requisitos do |t|
      t.integer :disciplina_id
      t.integer :disciplina_requisito_id
      t.timestamps
    end
  end
end
