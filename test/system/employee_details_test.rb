require "application_system_test_case"

class EmployeeDetailsTest < ApplicationSystemTestCase
  setup do
    @employee_detail = employee_details(:one)
  end

  test "visiting the index" do
    visit employee_details_url
    assert_selector "h1", text: "Employee Details"
  end

  test "creating a Employee detail" do
    visit employee_details_url
    click_on "New Employee Detail"

    fill_in "Email", with: @employee_detail.email
    fill_in "Experience", with: @employee_detail.experience
    fill_in "Fname", with: @employee_detail.fName
    fill_in "Lname", with: @employee_detail.lName
    fill_in "Role", with: @employee_detail.role
    click_on "Create Employee detail"

    assert_text "Employee detail was successfully created"
    click_on "Back"
  end

  test "updating a Employee detail" do
    visit employee_details_url
    click_on "Edit", match: :first

    fill_in "Email", with: @employee_detail.email
    fill_in "Experience", with: @employee_detail.experience
    fill_in "Fname", with: @employee_detail.fName
    fill_in "Lname", with: @employee_detail.lName
    fill_in "Role", with: @employee_detail.role
    click_on "Update Employee detail"

    assert_text "Employee detail was successfully updated"
    click_on "Back"
  end

  test "destroying a Employee detail" do
    visit employee_details_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employee detail was successfully destroyed"
  end
end
