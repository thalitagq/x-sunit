class RenameColumnsSituation < ActiveRecord::Migration[5.1]
  def change
  
 	 rename_column :situations, :total_abducted , :total_abducted_percentage
 	 rename_column :situations, :total_non_abducted , :total_non_abducted_percentage

  end
end
