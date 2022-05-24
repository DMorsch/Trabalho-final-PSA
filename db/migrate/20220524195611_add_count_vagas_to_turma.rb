class AddCountVagasToTurma < ActiveRecord::Migration[6.1]
  def change
    add_column :turmas, :turma_users_count, :integer
  end
end
