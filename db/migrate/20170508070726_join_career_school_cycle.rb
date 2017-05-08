class JoinCareerSchoolCycle < ActiveRecord::Migration[5.0]
  def change
     add_reference :school_cycles, :career, index: true
    add_foreign_key :school_cycles, :career
  end
end
