class CreateSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :subjects do |t|
      t.string :nombre_materia
      t.integer :subject_type
      t.string :clave_materia
      t.references :group, index: true, foreign_key: true
      t.timestamps
    end
  end
end
