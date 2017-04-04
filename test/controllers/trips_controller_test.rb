require 'test_helper'

class TripsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trip = trips(:one)
  end

  test "should get index" do
    get trips_url
    assert_response :success
  end

  test "should get new" do
    get new_trip_url
    assert_response :success
  end

  test "should create trip" do
    assert_difference('Trip.count') do
      post trips_url, params: { trip: { accompanied_by: @trip.accompanied_by, begin_date: @trip.begin_date, begin_time: @trip.begin_time, conference_fee: @trip.conference_fee, contact_person: @trip.contact_person, end_date: @trip.end_date, end_time: @trip.end_time, fee_estimate: @trip.fee_estimate, food_estimate: @trip.food_estimate, lodging_estimate: @trip.lodging_estimate, meeting_date: @trip.meeting_date, meeting_time: @trip.meeting_time, multi_page: @trip.multi_page, place: @trip.place, purpose: @trip.purpose, sap_number: @trip.sap_number, travel_estimate: @trip.travel_estimate } }
    end

    assert_redirected_to trip_url(Trip.last)
  end

  test "should show trip" do
    get trip_url(@trip)
    assert_response :success
  end

  test "should get edit" do
    get edit_trip_url(@trip)
    assert_response :success
  end

  test "should update trip" do
    patch trip_url(@trip), params: { trip: { accompanied_by: @trip.accompanied_by, begin_date: @trip.begin_date, begin_time: @trip.begin_time, conference_fee: @trip.conference_fee, contact_person: @trip.contact_person, end_date: @trip.end_date, end_time: @trip.end_time, fee_estimate: @trip.fee_estimate, food_estimate: @trip.food_estimate, lodging_estimate: @trip.lodging_estimate, meeting_date: @trip.meeting_date, meeting_time: @trip.meeting_time, multi_page: @trip.multi_page, place: @trip.place, purpose: @trip.purpose, sap_number: @trip.sap_number, travel_estimate: @trip.travel_estimate } }
    assert_redirected_to trip_url(@trip)
  end

  test "should destroy trip" do
    assert_difference('Trip.count', -1) do
      delete trip_url(@trip)
    end

    assert_redirected_to trips_url
  end
end
