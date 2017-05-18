class ModfTablas < ActiveRecord::Migration[5.0]
def change
      change_table(:student_has_subjects) do |t|
      t.remove :cycle_has_student_id
    end
  end
end
