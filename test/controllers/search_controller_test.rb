require 'test_helper'

class SearchControllerTest < ActionDispatch::IntegrationTest
  test "should get find" do
    get search_find_url
    assert_response :success
  end

  test "should get index" do
    get search_index_url
    assert_response :success
  end

end
