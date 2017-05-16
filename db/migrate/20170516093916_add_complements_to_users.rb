class AddComplementsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :user_type, :string
    add_column :users, :nombre, :string
    add_column :users, :apellido_paterno, :string
    add_column :users, :apellido_materno, :string
  end
end
