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

    check "L" if @product.L
    check "M" if @product.M
    check "S" if @product.S
    check "Xl" if @product.XL
    check "Azul" if @product.azul
    check "Blanco" if @product.blanco
    fill_in "Codigo", with: @product.codigo
    fill_in "Descripcion", with: @product.descripcion
    check "Gris" if @product.gris
    fill_in "Name", with: @product.name
    check "Negro" if @product.negro
    check "Nude" if @product.nude
    fill_in "Precio", with: @product.precio
    fill_in "Sexo", with: @product.sexo
    check "Verde" if @product.verde
    click_on "Create Product"

    assert_text "Product was successfully created"
    click_on "Back"
  end

  test "updating a Product" do
    visit products_url
    click_on "Edit", match: :first

    check "L" if @product.L
    check "M" if @product.M
    check "S" if @product.S
    check "Xl" if @product.XL
    check "Azul" if @product.azul
    check "Blanco" if @product.blanco
    fill_in "Codigo", with: @product.codigo
    fill_in "Descripcion", with: @product.descripcion
    check "Gris" if @product.gris
    fill_in "Name", with: @product.name
    check "Negro" if @product.negro
    check "Nude" if @product.nude
    fill_in "Precio", with: @product.precio
    fill_in "Sexo", with: @product.sexo
    check "Verde" if @product.verde
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
