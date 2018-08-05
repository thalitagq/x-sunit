class CreateAbductionReports < ActiveRecord::Migration[5.1]
  def change
    create_table :abduction_reports do |t|
      t.integer :amount

      t.timestamps
    end
  end
end
