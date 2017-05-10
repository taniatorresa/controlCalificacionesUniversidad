class ErrorSubjects < ActiveRecord::Migration[5.0]
  def change
      change_table(:period_has_groups) do |t|
      t.remove :subjects_id
    end
  end
end
