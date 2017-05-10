require 'test_helper'

class PresencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @presence = presences(:one)
  end

  test "should get index" do
    get presences_url
    assert_response :success
  end

  test "should get new" do
    get new_presence_url
    assert_response :success
  end

  test "should create presence" do
    assert_difference('Presence.count') do
      post presences_url, params: { presence: { fecha_asistencia: @presence.fecha_asistencia, presence_type: @presence.presence_type } }
    end

    assert_redirected_to presence_url(Presence.last)
  end

  test "should show presence" do
    get presence_url(@presence)
    assert_response :success
  end

  test "should get edit" do
    get edit_presence_url(@presence)
    assert_response :success
  end

  test "should update presence" do
    patch presence_url(@presence), params: { presence: { fecha_asistencia: @presence.fecha_asistencia, presence_type: @presence.presence_type } }
    assert_redirected_to presence_url(@presence)
  end

  test "should destroy presence" do
    assert_difference('Presence.count', -1) do
      delete presence_url(@presence)
    end

    assert_redirected_to presences_url
  end
end
