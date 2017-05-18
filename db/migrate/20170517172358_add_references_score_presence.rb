class AddReferencesScorePresence < ActiveRecord::Migration[5.0]
  def change
      change_table(:presences) do |t|
      t.references :student_has_subject, index: true, foreign_key: true
  end

  change_table(:scores) do |t|
      t.references :student_has_subject, index: true, foreign_key: true
  end
  end
end
