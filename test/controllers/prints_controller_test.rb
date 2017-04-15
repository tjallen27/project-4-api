require 'test_helper'

class PrintsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @print = prints(:one)
  end

  test "should get index" do
    get prints_url, as: :json
    assert_response :success
  end

  test "should create print" do
    assert_difference('Print.count') do
      post prints_url, params: { print: { body: @print.body, height: @print.height, image: @print.image, medium: @print.medium, price: @print.price, title: @print.title, user_id: @print.user_id, width: @print.width } }, as: :json
    end

    assert_response 201
  end

  test "should show print" do
    get print_url(@print), as: :json
    assert_response :success
  end

  test "should update print" do
    patch print_url(@print), params: { print: { body: @print.body, height: @print.height, image: @print.image, medium: @print.medium, price: @print.price, title: @print.title, user_id: @print.user_id, width: @print.width } }, as: :json
    assert_response 200
  end

  test "should destroy print" do
    assert_difference('Print.count', -1) do
      delete print_url(@print), as: :json
    end

    assert_response 204
  end
end
