require "test_helper"

class AllocationsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get allocations_new_url
    assert_response :success
  end

  test "should get create" do
    get allocations_create_url
    assert_response :success
  end

  test "should get show" do
    get allocations_show_url
    assert_response :success
  end
end
