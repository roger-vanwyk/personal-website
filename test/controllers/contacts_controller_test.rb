require 'test_helper'

class ContactsControllerTest < ActionController::TestCase

  test "index" do
    get :index
    assert_response 401
  end

  test "destroy" do
    contact = contacts(:one)
    get :destroy,  params: {id: contact.id }
    assert_response 401
  end

end
