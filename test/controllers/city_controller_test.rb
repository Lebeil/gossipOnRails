require 'test_helper'

class CityControllerTest < ActionDispatch::IntegrationTest
  test "should get :show" do
    get city_:show_url
    assert_response :success
  end

end
