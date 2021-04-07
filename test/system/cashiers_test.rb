require "application_system_test_case"

class CashiersTest < ApplicationSystemTestCase
  setup do
    @cashier = cashiers(:one)
  end

  test "visiting the index" do
    visit cashiers_url
    assert_selector "h1", text: "Cashiers"
  end

  test "creating a Cashier" do
    visit cashiers_url
    click_on "New Cashier"

    fill_in "Employee address", with: @cashier.employee_address
    fill_in "Employee name", with: @cashier.employee_name
    fill_in "Employee salary", with: @cashier.employee_salary
    click_on "Create Cashier"

    assert_text "Cashier was successfully created"
    click_on "Back"
  end

  test "updating a Cashier" do
    visit cashiers_url
    click_on "Edit", match: :first

    fill_in "Employee address", with: @cashier.employee_address
    fill_in "Employee name", with: @cashier.employee_name
    fill_in "Employee salary", with: @cashier.employee_salary
    click_on "Update Cashier"

    assert_text "Cashier was successfully updated"
    click_on "Back"
  end

  test "destroying a Cashier" do
    visit cashiers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cashier was successfully destroyed"
  end
end
