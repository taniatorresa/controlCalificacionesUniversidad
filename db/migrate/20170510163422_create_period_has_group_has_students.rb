class CreatePeriodHasGroupHasStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :period_has_group_has_students do |t|
      t.integer :student_subject_type

      t.timestamps
    end
  end
end
