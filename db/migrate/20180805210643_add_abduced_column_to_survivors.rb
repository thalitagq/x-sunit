class AddAbducedColumnToSurvivors < ActiveRecord::Migration[5.1]
  def change
  	add_column :survivors, :abducted, :boolean
  end
end
