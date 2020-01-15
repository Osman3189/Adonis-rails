require 'test_helper'

class NoticeboardsControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get noticeboards_edit_url
    assert_response :success
  end

  test "should get index" do
    get noticeboards_index_url
    assert_response :success
  end

  test "should get new" do
    get noticeboards_new_url
    assert_response :success
  end

  test "should get show" do
    get noticeboards_show_url
    assert_response :success
  end

end
