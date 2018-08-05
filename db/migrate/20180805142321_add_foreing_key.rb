class AddForeingKey < ActiveRecord::Migration[5.1]
  def change
  	add_foreign_key :abduction_reports, :survivors, column:  :id, primary_key: :id

  end
end
