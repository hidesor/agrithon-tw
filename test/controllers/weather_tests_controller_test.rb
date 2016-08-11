require 'test_helper'

class WeatherTestsControllerTest < ActionController::TestCase
  setup do
    @weather_test = weather_tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:weather_tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create weather_test" do
    assert_difference('WeatherTest.count') do
      post :create, weather_test: { date_a: @weather_test.date_a }
    end

    assert_redirected_to weather_test_path(assigns(:weather_test))
  end

  test "should show weather_test" do
    get :show, id: @weather_test
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @weather_test
    assert_response :success
  end

  test "should update weather_test" do
    patch :update, id: @weather_test, weather_test: { date_a: @weather_test.date_a }
    assert_redirected_to weather_test_path(assigns(:weather_test))
  end

  test "should destroy weather_test" do
    assert_difference('WeatherTest.count', -1) do
      delete :destroy, id: @weather_test
    end

    assert_redirected_to weather_tests_path
  end
end
