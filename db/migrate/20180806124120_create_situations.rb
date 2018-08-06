class CreateSituations < ActiveRecord::Migration[5.1]
  def change
    create_table :situations do |t|
      t.integer :total_survivors
      t.integer :total_abducted
      t.integer :total_non_abducted

      t.timestamps
    end
  end
end
