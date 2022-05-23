class CreateDisciplinas < ActiveRecord::Migration[6.1]
  def change
    create_table :disciplinas do |t|
      t.string :nome
      t.integer :codigo
      t.integer :creditos
      t.timestamps
    end
  end
end
