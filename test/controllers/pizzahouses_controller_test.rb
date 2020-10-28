require 'test_helper'

class PizzahousesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pizzahouse = pizzahouses(:one)
  end

  test "should get new" do
    get new_pizzahouse_url
    assert_response :success
  end

  test "should create pizzahouse" do
    assert_difference('Pizzahouse.count') do
      post pizzahouses_url, params: { pizzahouse: { adress: 'test',
                                                    workinghoures: 'test',
                                                    name: 'testing',
                                                    menu_id: Menu.last.id } }
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
    patch pizzahouse_url(@pizzahouse),
          params: { pizzahouse: { adress: @pizzahouse.adress,
                                  workinghoures: @pizzahouse.workinghoures,
                                  name: @pizzahouse.name,
                                  menu_id: @pizzahouse.menu_id } }
    assert_redirected_to pizzahouse_url(@pizzahouse)
  end

  test "should destroy pizzahouse" do
    assert_difference('Pizzahouse.count', -1) do
      delete pizzahouse_url(@pizzahouse)
    end

    assert_redirected_to root_path
  end
end
