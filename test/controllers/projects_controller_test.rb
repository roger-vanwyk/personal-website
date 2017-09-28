require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase

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
    project = projects(:one)
    get :edit,  params: { id: project.id }
    assert_response 401
  end

  test "destroy" do
    project = projects(:one)
    get :destroy, params: { id: project.id }
    assert_response 401
  end

end
