class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.datetime :res_time, null:false
      t.string :name, null:false
      t.integer :num_people, null:false, default:2
      t.references :restaurant, index: true, null:false

      # For polymorphic association with
      # PhoneReservation and InternetReservation
      t.integer :reservable_id
      t.string :reservable_type

      t.timestamps
    end
  end
end