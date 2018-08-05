class AddAbductionReportsAmountToSurvivors < ActiveRecord::Migration[5.1]
  def change
  	add_column :survivors, :abduction_reports, :integer
  end
end
