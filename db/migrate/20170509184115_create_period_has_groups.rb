class CreatePeriodHasGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :period_has_groups do |t|
      t.boolean :lunes
      t.boolean :martes
      t.boolean :miercoles
      t.boolean :jueves
      t.boolean :viernes
      t.boolean :sabado
      t.string :horario_clases
      t.timestamps
    end
  end
end
