require 'test_helper'

class Test2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @test2 = test2s(:one)
  end

  test "should get index" do
    get test2s_url, as: :json
    assert_response :success
  end

  test "should create test2" do
    assert_difference('Test2.count') do
      post test2s_url, params: { test2: { name: @test2.name } }, as: :json
    end

    assert_response 201
  end

  test "should show test2" do
    get test2_url(@test2), as: :json
    assert_response :success
  end

  test "should update test2" do
    patch test2_url(@test2), params: { test2: { name: @test2.name } }, as: :json
    assert_response 200
  end

  test "should destroy test2" do
    assert_difference('Test2.count', -1) do
      delete test2_url(@test2), as: :json
    end

    assert_response 204
  end
end
