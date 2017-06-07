class CreatePeriods < ActiveRecord::Migration[5.0]
  def change
    create_table :periods do |t|
      t.string :nombre_periodo
      t.integer :period_type
      t.references :school_cycle, index: true, foreign_key: true
      t.timestamps
    end
  end
end
