require 'test_helper'

class ReservationControllerTest < ActionDispatch::IntegrationTest
  test "should get customer_id:integer" do
    get reservation_customer_id:integer_url
    assert_response :success
  end

  test "should get location:text" do
    get reservation_location:text_url
    assert_response :success
  end

  test "should get start_date:datetime" do
    get reservation_start_date:datetime_url
    assert_response :success
  end

  test "should get end_date:datetime" do
    get reservation_end_date:datetime_url
    assert_response :success
  end

  test "should get extra:text" do
    get reservation_extra:text_url
    assert_response :success
  end

  test "should get vehicle_id:integer" do
    get reservation_vehicle_id:integer_url
    assert_response :success
  end

end
