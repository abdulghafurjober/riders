require 'test_helper'

class AssignmentControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get Assignment_index_url
    assert_response :success
  end

end
