class CreateStudentHasSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :student_has_subjects do |t|
      t.integer :student_subject_type
      t.references :student, index: true, foreign_key: true
      t.references :cycle_has_subject, index: true, foreign_key: true
      t.timestamps
    end
  end
end
