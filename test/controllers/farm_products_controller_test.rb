require 'test_helper'

class FarmProductsControllerTest < ActionController::TestCase
  setup do
    @farm_product = farm_products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:farm_products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create farm_product" do
    assert_difference('FarmProduct.count') do
      post :create, farm_product: { county: @farm_product.county, crop: @farm_product.crop, month: @farm_product.month, town: @farm_product.town, type: @farm_product.type, variery: @farm_product.variery }
    end

    assert_redirected_to farm_product_path(assigns(:farm_product))
  end

  test "should show farm_product" do
    get :show, id: @farm_product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @farm_product
    assert_response :success
  end

  test "should update farm_product" do
    patch :update, id: @farm_product, farm_product: { county: @farm_product.county, crop: @farm_product.crop, month: @farm_product.month, town: @farm_product.town, type: @farm_product.type, variery: @farm_product.variery }
    assert_redirected_to farm_product_path(assigns(:farm_product))
  end

  test "should destroy farm_product" do
    assert_difference('FarmProduct.count', -1) do
      delete :destroy, id: @farm_product
    end

    assert_redirected_to farm_products_path
  end
end
