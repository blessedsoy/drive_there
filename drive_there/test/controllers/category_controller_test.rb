require 'test_helper'

class CategoryControllerTest < ActionDispatch::IntegrationTest
  test "should get name:text" do
    get category_name:text_url
    assert_response :success
  end

end
