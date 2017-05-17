require 'test_helper'

class CycleHasSubjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cycle_has_subject = cycle_has_subjects(:one)
  end

  test "should get index" do
    get cycle_has_subjects_url
    assert_response :success
  end

  test "should get new" do
    get new_cycle_has_subject_url
    assert_response :success
  end

  test "should create cycle_has_subject" do
    assert_difference('CycleHasSubject.count') do
      post cycle_has_subjects_url, params: { cycle_has_subject: { horario_clases: @cycle_has_subject.horario_clases, jueves: @cycle_has_subject.jueves, lunes: @cycle_has_subject.lunes, martes: @cycle_has_subject.martes, miercoles: @cycle_has_subject.miercoles, sabado: @cycle_has_subject.sabado, viernes: @cycle_has_subject.viernes } }
    end

    assert_redirected_to cycle_has_subject_url(CycleHasSubject.last)
  end

  test "should show cycle_has_subject" do
    get cycle_has_subject_url(@cycle_has_subject)
    assert_response :success
  end

  test "should get edit" do
    get edit_cycle_has_subject_url(@cycle_has_subject)
    assert_response :success
  end

  test "should update cycle_has_subject" do
    patch cycle_has_subject_url(@cycle_has_subject), params: { cycle_has_subject: { horario_clases: @cycle_has_subject.horario_clases, jueves: @cycle_has_subject.jueves, lunes: @cycle_has_subject.lunes, martes: @cycle_has_subject.martes, miercoles: @cycle_has_subject.miercoles, sabado: @cycle_has_subject.sabado, viernes: @cycle_has_subject.viernes } }
    assert_redirected_to cycle_has_subject_url(@cycle_has_subject)
  end

  test "should destroy cycle_has_subject" do
    assert_difference('CycleHasSubject.count', -1) do
      delete cycle_has_subject_url(@cycle_has_subject)
    end

    assert_redirected_to cycle_has_subjects_url
  end
end
