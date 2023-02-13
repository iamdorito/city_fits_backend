require "application_system_test_case"

class OutfitProductsTest < ApplicationSystemTestCase
  setup do
    @outfit_product = outfit_products(:one)
  end

  test "visiting the index" do
    visit outfit_products_url
    assert_selector "h1", text: "Outfit products"
  end

  test "should create outfit product" do
    visit outfit_products_url
    click_on "New outfit product"

    fill_in "Outfit", with: @outfit_product.outfit_id
    fill_in "Product", with: @outfit_product.product_id
    click_on "Create Outfit product"

    assert_text "Outfit product was successfully created"
    click_on "Back"
  end

  test "should update Outfit product" do
    visit outfit_product_url(@outfit_product)
    click_on "Edit this outfit product", match: :first

    fill_in "Outfit", with: @outfit_product.outfit_id
    fill_in "Product", with: @outfit_product.product_id
    click_on "Update Outfit product"

    assert_text "Outfit product was successfully updated"
    click_on "Back"
  end

  test "should destroy Outfit product" do
    visit outfit_product_url(@outfit_product)
    click_on "Destroy this outfit product", match: :first

    assert_text "Outfit product was successfully destroyed"
  end
end
