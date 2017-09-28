require 'test_helper'

class ExperiencesControllerTest < ActionController::TestCase
  
  test "index" do
    get :index
    assert_response 401
  end

  test "new" do
    get :new
    assert_response 401
  end

  test "create" do
    get :create
    assert_response 401
  end

  test "edit" do
    experience = experiences(:one)
    get :edit,  params: { id: experience.id }
    assert_response 401
  end

  test "destroy" do
    experience = experiences(:one)
    get :destroy, params: { id: experience.id }
    assert_response 401
  end

end
