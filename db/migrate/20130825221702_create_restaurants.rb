class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name, null:false

      # Max number of people who can be seated
      # in this restaurant
      # (This way it can vay per restaurant,
      #   and this element is not hard-coded)
      t.integer :capacity, null:false, default:50

      # Maximum number of minutes we expect guests to stay
      # at a table in this restaurant
      t.integer :max_time, null:false, default:120

      t.timestamps
    end
  end
end
