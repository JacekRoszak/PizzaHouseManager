require 'test_helper'

class PizzahousesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pizzahouse = pizzahouses(:one)
  end

  test "should get index" do
    get pizzahouses_url
    assert_response :success
  end

  test "should get new" do
    get new_pizzahouse_url
    assert_response :success
  end

  test "should create pizzahouse" do
    assert_difference('Pizzahouse.count') do
      post pizzahouses_url, params: { pizzahouse: { adress: @pizzahouse.adress, close_at: @pizzahouse.close_at, name: @pizzahouse.name, start_at: @pizzahouse.start_at } }
    end

    assert_redirected_to pizzahouse_url(Pizzahouse.last)
  end

  test "should show pizzahouse" do
    get pizzahouse_url(@pizzahouse)
    assert_response :success
  end

  test "should get edit" do
    get edit_pizzahouse_url(@pizzahouse)
    assert_response :success
  end

  test "should update pizzahouse" do
    patch pizzahouse_url(@pizzahouse), params: { pizzahouse: { adress: @pizzahouse.adress, close_at: @pizzahouse.close_at, name: @pizzahouse.name, start_at: @pizzahouse.start_at } }
    assert_redirected_to pizzahouse_url(@pizzahouse)
  end

  test "should destroy pizzahouse" do
    assert_difference('Pizzahouse.count', -1) do
      delete pizzahouse_url(@pizzahouse)
    end

    assert_redirected_to pizzahouses_url
  end
end
