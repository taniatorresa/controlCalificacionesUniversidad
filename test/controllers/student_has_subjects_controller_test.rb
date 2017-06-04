require 'test_helper'

class StudentHasSubjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student_has_subject = student_has_subjects(:one)
  end

  test "should get index" do
    get student_has_subjects_url
    assert_response :success
  end

  test "should get new" do
    get new_student_has_subject_url
    assert_response :success
  end

  test "should create student_has_subject" do
    assert_difference('StudentHasSubject.count') do
      post student_has_subjects_url, params: { student_has_subject: { student_subject_type: @student_has_subject.student_subject_type } }
    end

    assert_redirected_to student_has_subject_url(StudentHasSubject.last)
  end

  test "should show student_has_subject" do
    get student_has_subject_url(@student_has_subject)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_has_subject_url(@student_has_subject)
    assert_response :success
  end

  test "should update student_has_subject" do
    patch student_has_subject_url(@student_has_subject), params: { student_has_subject: { student_subject_type: @student_has_subject.student_subject_type } }
    assert_redirected_to student_has_subject_url(@student_has_subject)
  end

  test "should destroy student_has_subject" do
    assert_difference('StudentHasSubject.count', -1) do
      delete student_has_subject_url(@student_has_subject)
    end

    assert_redirected_to student_has_subjects_url
  end
end
