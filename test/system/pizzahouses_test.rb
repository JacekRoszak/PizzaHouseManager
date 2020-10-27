require "application_system_test_case"

class PizzahousesTest < ApplicationSystemTestCase
  setup do
    @pizzahouse = pizzahouses(:one)
  end

  test "visiting the index" do
    visit pizzahouses_url
    assert_selector "h1", text: "Pizzahouses"
  end

  test "creating a Pizzahouse" do
    visit pizzahouses_url
    click_on "New Pizzahouse"

    fill_in "Adress", with: @pizzahouse.adress
    fill_in "Close at", with: @pizzahouse.close_at
    fill_in "Name", with: @pizzahouse.name
    fill_in "Start at", with: @pizzahouse.start_at
    click_on "Create Pizzahouse"

    assert_text "Pizzahouse was successfully created"
    click_on "Back"
  end

  test "updating a Pizzahouse" do
    visit pizzahouses_url
    click_on "Edit", match: :first

    fill_in "Adress", with: @pizzahouse.adress
    fill_in "Close at", with: @pizzahouse.close_at
    fill_in "Name", with: @pizzahouse.name
    fill_in "Start at", with: @pizzahouse.start_at
    click_on "Update Pizzahouse"

    assert_text "Pizzahouse was successfully updated"
    click_on "Back"
  end

  test "destroying a Pizzahouse" do
    visit pizzahouses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pizzahouse was successfully destroyed"
  end
end
