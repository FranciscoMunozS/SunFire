require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  setup do
    @product = products(:one)
  end

  test "visiting the index" do
    visit products_url
    assert_selector "h1", text: "Products"
  end

  test "creating a Product" do
    visit products_url
    click_on "New Product"

    fill_in "Bill", with: @product.bill
    fill_in "Code", with: @product.code
    fill_in "Dispatch date", with: @product.dispatch_date
    fill_in "Income date", with: @product.income_date
    fill_in "Iva value", with: @product.iva_value
    fill_in "Name", with: @product.name
    fill_in "Provider", with: @product.provider
    fill_in "Quantity", with: @product.quantity
    fill_in "Total", with: @product.total
    fill_in "Ubication", with: @product.ubication
    fill_in "Unit value", with: @product.unit_value
    click_on "Create Product"

    assert_text "Product was successfully created"
    click_on "Back"
  end

  test "updating a Product" do
    visit products_url
    click_on "Edit", match: :first

    fill_in "Bill", with: @product.bill
    fill_in "Code", with: @product.code
    fill_in "Dispatch date", with: @product.dispatch_date
    fill_in "Income date", with: @product.income_date
    fill_in "Iva value", with: @product.iva_value
    fill_in "Name", with: @product.name
    fill_in "Provider", with: @product.provider
    fill_in "Quantity", with: @product.quantity
    fill_in "Total", with: @product.total
    fill_in "Ubication", with: @product.ubication
    fill_in "Unit value", with: @product.unit_value
    click_on "Update Product"

    assert_text "Product was successfully updated"
    click_on "Back"
  end

  test "destroying a Product" do
    visit products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product was successfully destroyed"
  end
end
