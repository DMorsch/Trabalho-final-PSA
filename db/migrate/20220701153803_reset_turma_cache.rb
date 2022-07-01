class ResetTurmaCache < ActiveRecord::Migration[6.1]
  def up

    Turma.all.each do |turma|

        Turma.reset_counters(turma.id, :turma_users)

        end

     end

     def down

        # no rollback needed

     end
end
