class JoinFacultyCareer < ActiveRecord::Migration[5.0]
  def change
    add_reference :careers, :faculty, index: true
    add_foreign_key :careers, :faculty
  end
end
