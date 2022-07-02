class AddCodigos < ActiveRecord::Migration[6.1]
  def change
    remove_column :disciplinas, :codigo
    add_column :disciplinas, :codigo, :string
  end
end
