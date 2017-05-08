require 'test_helper'

class SchoolCyclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @school_cycle = school_cycles(:one)
  end

  test "should get index" do
    get school_cycles_url
    assert_response :success
  end

  test "should get new" do
    get new_school_cycle_url
    assert_response :success
  end

  test "should create school_cycle" do
    assert_difference('SchoolCycle.count') do
      post school_cycles_url, params: { school_cycle: { nombre_ciclo: @school_cycle.nombre_ciclo } }
    end

    assert_redirected_to school_cycle_url(SchoolCycle.last)
  end

  test "should show school_cycle" do
    get school_cycle_url(@school_cycle)
    assert_response :success
  end

  test "should get edit" do
    get edit_school_cycle_url(@school_cycle)
    assert_response :success
  end

  test "should update school_cycle" do
    patch school_cycle_url(@school_cycle), params: { school_cycle: { nombre_ciclo: @school_cycle.nombre_ciclo } }
    assert_redirected_to school_cycle_url(@school_cycle)
  end

  test "should destroy school_cycle" do
    assert_difference('SchoolCycle.count', -1) do
      delete school_cycle_url(@school_cycle)
    end

    assert_redirected_to school_cycles_url
  end
end
