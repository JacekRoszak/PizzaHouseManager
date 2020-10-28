require 'test_helper'

class AssigmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @assigment = assigments(:one)
  end

  test 'should get index' do
    get assigments_url(menu_id: Menu.last)
    assert_response :success
  end

  test 'should get new' do
    get new_assigment_url
    assert_response :success
  end

  test 'should create assigment' do
    assert_difference('Assigment.count') do
      post assigments_url, params: { assigment: { menu_id: Menu.last.id, pizza_id: Pizza.last.id } }
    end

    assert_redirected_to assigments_url(menu_id: Menu.last.id)
  end

  test 'should destroy assigment' do
    assert_difference('Assigment.count', -1) do
      delete assigment_url(@assigment)
    end

    assert_redirected_to assigments_url
  end
end
