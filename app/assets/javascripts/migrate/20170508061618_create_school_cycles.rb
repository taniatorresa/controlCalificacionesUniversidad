class CreateSchoolCycles < ActiveRecord::Migration[5.0]
  def change
    create_table :school_cycles do |t|
      t.string :nombre_ciclo
      t.references :career, index: true, foreign_key: true
      t.timestamps
    end
  end
end
