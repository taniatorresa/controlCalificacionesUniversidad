class CreateScores < ActiveRecord::Migration[5.0]
  def change
    create_table :scores do |t|
      t.boolean :aplicar_parcial
      t.integer :score_type
      t.float :calification

      t.timestamps
    end
  end
end
