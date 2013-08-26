class PhoneReservation < ActiveRecord::Base
	# Wire up the other half of this polymorphic association.
	#  (This allows for an average Reservation object to have
	#  extra reservable information specific to the
	#  PhoneReservation.  Which in this case is just a
	#  phone number.)
	has_one :reservation, as: :reservable, dependent: :destroy
	# Surface the base Reservable information here
	# Note that for some reason this gets in the way of
	# referencing things like this:  my_phone_reservation.reservable.name
	delegate :name, :num_people, :restaurant, :reservable_type, :to => :reservation
end
