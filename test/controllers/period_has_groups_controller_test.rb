require 'test_helper'

class PeriodHasGroupsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get period_has_groups_index_url
    assert_response :success
  end

  test "should get new" do
    get period_has_groups_new_url
    assert_response :success
  end

  test "should get show" do
    get period_has_groups_show_url
    assert_response :success
  end

  test "should get edit" do
    get period_has_groups_edit_url
    assert_response :success
  end

end
