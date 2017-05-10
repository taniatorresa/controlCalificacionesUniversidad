class AddReferencePeriodHasGroupHasStudent < ActiveRecord::Migration[5.0]
  def change
      change_table(:period_has_group_has_students) do |t|
      t.references :student, index: true, foreign_key: true
      t.references :period_has_groups, index: true, foreign_key: true
  end
  end
end
