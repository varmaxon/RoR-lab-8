require "test_helper"

class CalcControllerTest < ActionDispatch::IntegrationTest
  test "should get input" do
    get calc_input_url
    assert_response :success
  end

  test "should get view" do
    get calc_view_url
    assert_response :success
  end

  test "should get a correct result" do
    get calc_view_url, params: {numbers: 10}
    assert_equal assigns[:result], [[11, 13], [17, 19]]
  end
end
