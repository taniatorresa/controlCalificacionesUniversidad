class CreateCareers < ActiveRecord::Migration[5.0]
  def change
    create_table :careers do |t|
      t.string :nombre_carrera
      t.string :nombre_abbr
      t.references :faculty, index: true, foreign_key: true
      t.timestamps
    end
  end
end
