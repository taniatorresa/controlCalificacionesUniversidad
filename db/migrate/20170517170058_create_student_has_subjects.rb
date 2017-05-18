class CreateStudentHasSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :student_has_subjects do |t|
      t.integer :student_subject_type

      t.timestamps
    end
  end
end
