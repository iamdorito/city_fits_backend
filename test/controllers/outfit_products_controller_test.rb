require "test_helper"

class OutfitProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @outfit_product = outfit_products(:one)
  end

  test "should get index" do
    get outfit_products_url
    assert_response :success
  end

  test "should get new" do
    get new_outfit_product_url
    assert_response :success
  end

  test "should create outfit_product" do
    assert_difference("OutfitProduct.count") do
      post outfit_products_url, params: { outfit_product: { outfit_id: @outfit_product.outfit_id, product_id: @outfit_product.product_id } }
    end

    assert_redirected_to outfit_product_url(OutfitProduct.last)
  end

  test "should show outfit_product" do
    get outfit_product_url(@outfit_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_outfit_product_url(@outfit_product)
    assert_response :success
  end

  test "should update outfit_product" do
    patch outfit_product_url(@outfit_product), params: { outfit_product: { outfit_id: @outfit_product.outfit_id, product_id: @outfit_product.product_id } }
    assert_redirected_to outfit_product_url(@outfit_product)
  end

  test "should destroy outfit_product" do
    assert_difference("OutfitProduct.count", -1) do
      delete outfit_product_url(@outfit_product)
    end

    assert_redirected_to outfit_products_url
  end
end
