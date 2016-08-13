require 'test_helper'

class FarmCountsControllerTest < ActionController::TestCase
  setup do
    @farm_count = farm_counts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:farm_counts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create farm_count" do
    assert_difference('FarmCount.count') do
      post :create, farm_count: {  }
    end

    assert_redirected_to farm_count_path(assigns(:farm_count))
  end

  test "should show farm_count" do
    get :show, id: @farm_count
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @farm_count
    assert_response :success
  end

  test "should update farm_count" do
    patch :update, id: @farm_count, farm_count: {  }
    assert_redirected_to farm_count_path(assigns(:farm_count))
  end

  test "should destroy farm_count" do
    assert_difference('FarmCount.count', -1) do
      delete :destroy, id: @farm_count
    end

    assert_redirected_to farm_counts_path
  end
end
