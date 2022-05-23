class CreateTurmaUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :turma_users do |t|
      t.integer :turma_id
      t.integer :user_id
      t.timestamps
    end
  end
end
