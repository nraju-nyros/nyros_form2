require 'test_helper'

module NyrosForm2
  class UsersControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get index" do
      get users_index_url
      assert_response :success
    end

    test "should get new" do
      get users_new_url
      assert_response :success
    end

    test "should get show" do
      get users_show_url
      assert_response :success
    end

    test "should get edit" do
      get users_edit_url
      assert_response :success
    end

    test "should get update" do
      get users_update_url
      assert_response :success
    end

    test "should get delete" do
      get users_delete_url
      assert_response :success
    end

  end
end
