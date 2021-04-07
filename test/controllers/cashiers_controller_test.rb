require 'test_helper'

class CashiersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cashier = cashiers(:one)
  end

  test "should get index" do
    get cashiers_url
    assert_response :success
  end

  test "should get new" do
    get new_cashier_url
    assert_response :success
  end

  test "should create cashier" do
    assert_difference('Cashier.count') do
      post cashiers_url, params: { cashier: { employee_address: @cashier.employee_address, employee_name: @cashier.employee_name, employee_salary: @cashier.employee_salary } }
    end

    assert_redirected_to cashier_url(Cashier.last)
  end

  test "should show cashier" do
    get cashier_url(@cashier)
    assert_response :success
  end

  test "should get edit" do
    get edit_cashier_url(@cashier)
    assert_response :success
  end

  test "should update cashier" do
    patch cashier_url(@cashier), params: { cashier: { employee_address: @cashier.employee_address, employee_name: @cashier.employee_name, employee_salary: @cashier.employee_salary } }
    assert_redirected_to cashier_url(@cashier)
  end

  test "should destroy cashier" do
    assert_difference('Cashier.count', -1) do
      delete cashier_url(@cashier)
    end

    assert_redirected_to cashiers_url
  end
end
