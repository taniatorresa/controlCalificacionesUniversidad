class CreateScores < ActiveRecord::Migration[5.0]
  def change
    create_table :scores do |t|
      t.boolean :aplicar_parcial
      t.integer :score_type
      t.float :calification
      t.references :student_has_subject, index: true, foreign_key: true
      t.timestamps
    end
  end
end
