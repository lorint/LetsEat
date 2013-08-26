class Reservation < ActiveRecord::Base
	belongs_to :restaurant

	# Configure polymorphism
	# This will act somewhat similar to having
	#  PhoneReservation and InternetReservation
	#  inherit from Reservation, but will get
	#  stored in a more normalized way in the
	#  database, using three separate tables.
	belongs_to :reservable, polymorphic: true
end
