class AddCodigos < ActiveRecord::Migration[6.1]
  def change
    remove_column :disciplinas, :codigo
    remove_column :turmas, :codigo
    add_column :disciplinas, :codigo, :string
    add_column :turmas, :codigo, :string
  end
end
