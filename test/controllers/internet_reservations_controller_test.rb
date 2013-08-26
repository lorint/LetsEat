require 'test_helper'

class InternetReservationsControllerTest < ActionController::TestCase
  setup do
    @internet_reservation = internet_reservations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:internet_reservations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create internet_reservation" do
    assert_difference('InternetReservation.count') do
      post :create, internet_reservation: { name: @internet_reservation.name, num_people: @internet_reservation.num_people, phone_num: @internet_reservation.phone_num, res_time: @internet_reservation.res_time, reservable_type: @internet_reservation.reservable_type, restaurant_id: @internet_reservation.restaurant_id, source_website: @internet_reservation.source_website, time_reserved: @internet_reservation.time_reserved }
    end

    assert_redirected_to internet_reservation_path(assigns(:internet_reservation))
  end

  test "should show internet_reservation" do
    get :show, id: @internet_reservation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @internet_reservation
    assert_response :success
  end

  test "should update internet_reservation" do
    patch :update, id: @internet_reservation, internet_reservation: { name: @internet_reservation.name, num_people: @internet_reservation.num_people, phone_num: @internet_reservation.phone_num, res_time: @internet_reservation.res_time, reservable_type: @internet_reservation.reservable_type, restaurant_id: @internet_reservation.restaurant_id, source_website: @internet_reservation.source_website, time_reserved: @internet_reservation.time_reserved }
    assert_redirected_to internet_reservation_path(assigns(:internet_reservation))
  end

  test "should destroy internet_reservation" do
    assert_difference('InternetReservation.count', -1) do
      delete :destroy, id: @internet_reservation
    end

    assert_redirected_to internet_reservations_path
  end
end
