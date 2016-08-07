require 'test_helper'

class TradingMarketsControllerTest < ActionController::TestCase
  setup do
    @trading_market = trading_markets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trading_markets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trading_market" do
    assert_difference('TradingMarket.count') do
      post :create, trading_market: {  }
    end

    assert_redirected_to trading_market_path(assigns(:trading_market))
  end

  test "should show trading_market" do
    get :show, id: @trading_market
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trading_market
    assert_response :success
  end

  test "should update trading_market" do
    patch :update, id: @trading_market, trading_market: {  }
    assert_redirected_to trading_market_path(assigns(:trading_market))
  end

  test "should destroy trading_market" do
    assert_difference('TradingMarket.count', -1) do
      delete :destroy, id: @trading_market
    end

    assert_redirected_to trading_markets_path
  end
end
