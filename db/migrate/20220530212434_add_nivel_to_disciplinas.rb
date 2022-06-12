class AddNivelToDisciplinas < ActiveRecord::Migration[6.1]
  def change
    add_column :disciplinas, :nivel, :integer
  end
end
