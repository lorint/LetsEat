class CreateInternetReservations < ActiveRecord::Migration
  def change
    create_table :internet_reservations do |t|
	  t.string :phone_num
	  t.string :source_website
      t.datetime :time_reserved

      t.timestamps
    end
  end
end
