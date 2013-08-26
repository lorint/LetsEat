class InternetReservation < ActiveRecord::Base
	# Wire up the other half of this polymorphic association.
	#  (This allows for an average Reservation object to have
	#  extra reservable information specific to the
	#  InternetReservation.  Which in this case is a phone
	#  number, source website URL, and the exact time they
	#  submitted their request online.)
	has_one :reservation, as: :reservable, dependent: :destroy
	
	# As a test, on this one we won't surface the base
	# Reservable attributes.
	# Now we can reference stuff from the base like this:
	#  my_internet_reservation.reservable.name
#	delegate :name, :num_people, :restaurant, :reservable_type, :to => :reservation
end
