require 'test_helper'

class AssigmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @assigment = assigments(:one)
  end

  test "should get index" do
    get assigments_url
    assert_response :success
  end

  test "should get new" do
    get new_assigment_url
    assert_response :success
  end

  test "should create assigment" do
    assert_difference('Assigment.count') do
      post assigments_url, params: { assigment: { menu_id: @assigment.menu_id, pizza_id: @assigment.pizza_id } }
    end

    assert_redirected_to assigment_url(Assigment.last)
  end

  test "should show assigment" do
    get assigment_url(@assigment)
    assert_response :success
  end

  test "should get edit" do
    get edit_assigment_url(@assigment)
    assert_response :success
  end

  test "should update assigment" do
    patch assigment_url(@assigment), params: { assigment: { menu_id: @assigment.menu_id, pizza_id: @assigment.pizza_id } }
    assert_redirected_to assigment_url(@assigment)
  end

  test "should destroy assigment" do
    assert_difference('Assigment.count', -1) do
      delete assigment_url(@assigment)
    end

    assert_redirected_to assigments_url
  end
end
