class CreatePresences < ActiveRecord::Migration[5.0]
  def change
    create_table :presences do |t|
      t.integer :presence_type
      t.date :fecha_asistencia
       t.references :student_has_subject, index: true, foreign_key: true
      t.timestamps
    end
  end
end
