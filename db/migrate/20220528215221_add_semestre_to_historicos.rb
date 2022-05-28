class AddSemestreToHistoricos < ActiveRecord::Migration[6.1]
  def change
    add_column :historicos, :semestre, :string
  end
end
