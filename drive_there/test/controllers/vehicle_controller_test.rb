require 'test_helper'

class VehicleControllerTest < ActionDispatch::IntegrationTest
  test "should get make_model:text" do
    get vehicle_make_model:text_url
    assert_response :success
  end

  test "should get category_id:integer" do
    get vehicle_category_id:integer_url
    assert_response :success
  end

end
