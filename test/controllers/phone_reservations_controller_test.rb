require 'test_helper'

class PhoneReservationsControllerTest < ActionController::TestCase
  setup do
    @phone_reservation = phone_reservations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:phone_reservations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create phone_reservation" do
    assert_difference('PhoneReservation.count') do
      post :create, phone_reservation: { name: @phone_reservation.name, num_people: @phone_reservation.num_people, phone_num: @phone_reservation.phone_num, res_time: @phone_reservation.res_time, reservable_type: @phone_reservation.reservable_type, restaurant_id: @phone_reservation.restaurant_id }
    end

    assert_redirected_to phone_reservation_path(assigns(:phone_reservation))
  end

  test "should show phone_reservation" do
    get :show, id: @phone_reservation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @phone_reservation
    assert_response :success
  end

  test "should update phone_reservation" do
    patch :update, id: @phone_reservation, phone_reservation: { name: @phone_reservation.name, num_people: @phone_reservation.num_people, phone_num: @phone_reservation.phone_num, res_time: @phone_reservation.res_time, reservable_type: @phone_reservation.reservable_type, restaurant_id: @phone_reservation.restaurant_id }
    assert_redirected_to phone_reservation_path(assigns(:phone_reservation))
  end

  test "should destroy phone_reservation" do
    assert_difference('PhoneReservation.count', -1) do
      delete :destroy, id: @phone_reservation
    end

    assert_redirected_to phone_reservations_path
  end
end
