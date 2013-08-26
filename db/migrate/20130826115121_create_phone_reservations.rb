class CreatePhoneReservations < ActiveRecord::Migration
  def change
    create_table :phone_reservations do |t|
	  t.string :phone_num

      t.timestamps
    end
  end
end
