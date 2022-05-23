class CreateHistoricos < ActiveRecord::Migration[6.1]
  def change
    create_table :historicos do |t|
      t.integer :user_id
      t.integer :disciplina_id
      t.float :nota
      t.boolean :aprovado
      t.timestamps
    end
  end
end
