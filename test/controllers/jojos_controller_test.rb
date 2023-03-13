require "test_helper"

class JojosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jojo = jojos(:one)
  end

  test "should get index" do
    get jojos_url, as: :json
    assert_response :success
  end

  test "should create jojo" do
    assert_difference('Jojo.count') do
      post jojos_url, params: { jojo: { name: @jojo.name } }, as: :json
    end

    assert_response 201
  end

  test "should show jojo" do
    get jojo_url(@jojo), as: :json
    assert_response :success
  end

  test "should update jojo" do
    patch jojo_url(@jojo), params: { jojo: { name: @jojo.name } }, as: :json
    assert_response 200
  end

  test "should destroy jojo" do
    assert_difference('Jojo.count', -1) do
      delete jojo_url(@jojo), as: :json
    end

    assert_response 204
  end
end
