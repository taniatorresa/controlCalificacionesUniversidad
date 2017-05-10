class AddReferencessPeriodHasGroup < ActiveRecord::Migration[5.0]
  def change
      change_table(:period_has_groups) do |t|
      t.references :period, index: true, foreign_key: true
  end
  end
end
