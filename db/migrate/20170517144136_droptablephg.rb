class Droptablephg < ActiveRecord::Migration[5.0]
  def up
    drop_table :period_has_groups
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
