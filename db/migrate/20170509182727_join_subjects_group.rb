class JoinSubjectsGroup < ActiveRecord::Migration[5.0]
  def change
    add_reference :subjects, :group, index: true
    add_foreign_key :subjects, :group
  end
end
