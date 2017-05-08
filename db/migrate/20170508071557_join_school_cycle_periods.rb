class JoinSchoolCyclePeriods < ActiveRecord::Migration[5.0]
  def change
     add_reference :periods, :school_cycle, index: true
    add_foreign_key :periods, :school_cycle
  end
end
