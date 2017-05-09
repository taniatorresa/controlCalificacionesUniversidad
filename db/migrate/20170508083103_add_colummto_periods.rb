class AddColummtoPeriods < ActiveRecord::Migration[5.0]
  def up
    add_column :periods, :period_type, :integer
  end
end
