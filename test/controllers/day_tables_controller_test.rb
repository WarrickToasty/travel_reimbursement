require 'test_helper'

class DayTablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @day_table = day_tables(:one)
  end

  test "should get index" do
    get day_tables_url
    assert_response :success
  end

  test "should get new" do
    get new_day_table_url
    assert_response :success
  end

  test "should create day_table" do
    assert_difference('DayTable.count') do
      post day_tables_url, params: { day_table: { airfare: @day_table.airfare, breakfast: @day_table.breakfast, breakfast_tip: @day_table.breakfast_tip, bus_train: @day_table.bus_train, business_calls: @day_table.business_calls, d8: @day_table.d8, dinner: @day_table.dinner, dinner_tip: @day_table.dinner_tip, float: @day_table.float, float: @day_table.float, float: @day_table.float, gasoline: @day_table.gasoline, lodging: @day_table.lodging, lunch: @day_table.lunch, lunch_tip: @day_table.lunch_tip, mileage: @day_table.mileage, parking: @day_table.parking, personal_car: @day_table.personal_car, rental_car: @day_table.rental_car, string: @day_table.string, tax: @day_table.tax, transport_end: @day_table.transport_end, transport_start: @day_table.transport_start, trip_id: @day_table.trip_id, trip_number: @day_table.trip_number } }
    end

    assert_redirected_to day_table_url(DayTable.last)
  end

  test "should show day_table" do
    get day_table_url(@day_table)
    assert_response :success
  end

  test "should get edit" do
    get edit_day_table_url(@day_table)
    assert_response :success
  end

  test "should update day_table" do
    patch day_table_url(@day_table), params: { day_table: { airfare: @day_table.airfare, breakfast: @day_table.breakfast, breakfast_tip: @day_table.breakfast_tip, bus_train: @day_table.bus_train, business_calls: @day_table.business_calls, d8: @day_table.d8, dinner: @day_table.dinner, dinner_tip: @day_table.dinner_tip, float: @day_table.float, float: @day_table.float, float: @day_table.float, gasoline: @day_table.gasoline, lodging: @day_table.lodging, lunch: @day_table.lunch, lunch_tip: @day_table.lunch_tip, mileage: @day_table.mileage, parking: @day_table.parking, personal_car: @day_table.personal_car, rental_car: @day_table.rental_car, string: @day_table.string, tax: @day_table.tax, transport_end: @day_table.transport_end, transport_start: @day_table.transport_start, trip_id: @day_table.trip_id, trip_number: @day_table.trip_number } }
    assert_redirected_to day_table_url(@day_table)
  end

  test "should destroy day_table" do
    assert_difference('DayTable.count', -1) do
      delete day_table_url(@day_table)
    end

    assert_redirected_to day_tables_url
  end
end
