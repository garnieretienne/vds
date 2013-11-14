require 'test_helper'

class Admin::PublicationsControllerTest < ActionController::TestCase
  
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: publications(:one).id
    assert_response :success
  end
end
