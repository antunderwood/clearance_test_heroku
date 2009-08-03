require 'test_helper'

class SecretMessagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:secret_messages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create secret_message" do
    assert_difference('SecretMessage.count') do
      post :create, :secret_message => { }
    end

    assert_redirected_to secret_message_path(assigns(:secret_message))
  end

  test "should show secret_message" do
    get :show, :id => secret_messages(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => secret_messages(:one).to_param
    assert_response :success
  end

  test "should update secret_message" do
    put :update, :id => secret_messages(:one).to_param, :secret_message => { }
    assert_redirected_to secret_message_path(assigns(:secret_message))
  end

  test "should destroy secret_message" do
    assert_difference('SecretMessage.count', -1) do
      delete :destroy, :id => secret_messages(:one).to_param
    end

    assert_redirected_to secret_messages_path
  end
end
