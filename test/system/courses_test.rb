require "application_system_test_case"

class CoursesTest < ApplicationSystemTestCase
  setup do
    @course = courses(:one)
  end

  test "visiting the index" do
    visit courses_url
    assert_selector "h1", text: "Courses"
  end

  test "should create course" do
    visit courses_url
    click_on "New course"

    fill_in "Category", with: @course.category
    fill_in "Content", with: @course.content
    fill_in "Course code", with: @course.course_code
    fill_in "Course name", with: @course.course_name
    fill_in "Credits", with: @course.credits
    fill_in "Department", with: @course.department
    fill_in "Programme", with: @course.programme
    fill_in "References", with: @course.references
    fill_in "Semester", with: @course.semester
    click_on "Create Course"

    assert_text "Course was successfully created"
    click_on "Back"
  end

  test "should update Course" do
    visit course_url(@course)
    click_on "Edit this course", match: :first

    fill_in "Category", with: @course.category
    fill_in "Content", with: @course.content
    fill_in "Course code", with: @course.course_code
    fill_in "Course name", with: @course.course_name
    fill_in "Credits", with: @course.credits
    fill_in "Department", with: @course.department
    fill_in "Programme", with: @course.programme
    fill_in "References", with: @course.references
    fill_in "Semester", with: @course.semester
    click_on "Update Course"

    assert_text "Course was successfully updated"
    click_on "Back"
  end

  test "should destroy Course" do
    visit course_url(@course)
    click_on "Destroy this course", match: :first

    assert_text "Course was successfully destroyed"
  end
end
