class AddReferencePeriodHasGroup < ActiveRecord::Migration[5.0]
  def change
  change_table(:period_has_groups) do |t|
      t.references :teacher, index: true, foreign_key: true
  end

  end
end
