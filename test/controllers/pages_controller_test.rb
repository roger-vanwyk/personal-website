require 'test_helper'

class PagesControllerTest < ActionController::TestCase

  test "should get index" do
    get :index
    assert_not_empty(:experiences)
    assert_not_empty(:projects)
    assert_response :success
    assert_select "title", "Eric Gonzalez"
  end

end
