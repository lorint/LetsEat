class CreateTimeSlots < ActiveRecord::Migration
  def change
    create_table :time_slots do |t|
      t.integer :offset, null:false

      t.timestamps
    end
  end
end
