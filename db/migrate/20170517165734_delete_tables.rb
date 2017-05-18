class DeleteTables < ActiveRecord::Migration[5.0]
 def up
    drop_table :period_has_group_has_students
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
