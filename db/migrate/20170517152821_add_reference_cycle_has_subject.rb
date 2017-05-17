class AddReferenceCycleHasSubject < ActiveRecord::Migration[5.0]
  def change

  change_table(:cycle_has_subjects) do |t|
      t.references :teacher, index: true, foreign_key: true
  end

  change_table(:cycle_has_subjects) do |t|
      t.references :subject, index: true, foreign_key: true
  end
    change_table(:cycle_has_subjects) do |t|
      t.references :school_cycle, index: true, foreign_key: true
  end


  end
end
