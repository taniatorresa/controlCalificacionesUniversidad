class CreateCycleHasSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :cycle_has_subjects do |t|
      t.boolean :lunes
      t.boolean :martes
      t.boolean :miercoles
      t.boolean :jueves
      t.boolean :viernes
      t.boolean :sabado
      t.string :horario_clases
      t.references :teacher, index: true, foreign_key: true
      t.references :subject, index: true, foreign_key: true
      t.references :school_cycle, index: true, foreign_key: true
      t.timestamps
    end
  end
end
