class AddReferenceStudenHasSubject < ActiveRecord::Migration[5.0]
  def change
      change_table(:student_has_subjects) do |t|
      t.references :cycle_has_subject, index: true, foreign_key: true

  end
  end
end
