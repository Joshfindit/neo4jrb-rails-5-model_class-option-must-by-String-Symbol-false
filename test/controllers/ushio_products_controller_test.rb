require 'test_helper'

class UshioProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ushio_product = ushio_products(:one)
  end

  test "should get index" do
    get ushio_products_url
    assert_response :success
  end

  test "should get new" do
    get new_ushio_product_url
    assert_response :success
  end

  test "should create ushio_product" do
    assert_difference('UshioProduct.count') do
      post ushio_products_url, params: { ushio_product: { description: @ushio_product.description, name: @ushio_product.name, related_id: @ushio_product.related_id, sku: @ushio_product.sku, tagged_id: @ushio_product.tagged_id } }
    end

    assert_redirected_to ushio_product_url(UshioProduct.last)
  end

  test "should show ushio_product" do
    get ushio_product_url(@ushio_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_ushio_product_url(@ushio_product)
    assert_response :success
  end

  test "should update ushio_product" do
    patch ushio_product_url(@ushio_product), params: { ushio_product: { description: @ushio_product.description, name: @ushio_product.name, related_id: @ushio_product.related_id, sku: @ushio_product.sku, tagged_id: @ushio_product.tagged_id } }
    assert_redirected_to ushio_product_url(@ushio_product)
  end

  test "should destroy ushio_product" do
    assert_difference('UshioProduct.count', -1) do
      delete ushio_product_url(@ushio_product)
    end

    assert_redirected_to ushio_products_url
  end
end
