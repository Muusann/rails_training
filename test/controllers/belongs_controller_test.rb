require 'test_helper'

class BelongsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @belong = belongs(:one)
  end

  test "should get index" do
    get belongs_url
    assert_response :success
  end

  test "should get new" do
    get new_belong_url
    assert_response :success
  end

  test "should create belong" do
    assert_difference('Belong.count') do
      post belongs_url, params: { belong: { name: @belong.name } }
    end

    assert_redirected_to belong_url(Belong.last)
  end

  test "should show belong" do
    get belong_url(@belong)
    assert_response :success
  end

  test "should get edit" do
    get edit_belong_url(@belong)
    assert_response :success
  end

  test "should update belong" do
    patch belong_url(@belong), params: { belong: { name: @belong.name } }
    assert_redirected_to belong_url(@belong)
  end

  test "should destroy belong" do
    assert_difference('Belong.count', -1) do
      delete belong_url(@belong)
    end

    assert_redirected_to belongs_url
  end
end
