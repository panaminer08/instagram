require 'test_helper'

class InstaasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @instaa = instaas(:one)
  end

  test "should get index" do
    get instaas_url
    assert_response :success
  end

  test "should get new" do
    get new_instaa_url
    assert_response :success
  end

  test "should create instaa" do
    assert_difference('Instaa.count') do
      post instaas_url, params: { instaa: { description: @instaa.description, title: @instaa.title } }
    end

    assert_redirected_to instaa_url(Instaa.last)
  end

  test "should show instaa" do
    get instaa_url(@instaa)
    assert_response :success
  end

  test "should get edit" do
    get edit_instaa_url(@instaa)
    assert_response :success
  end

  test "should update instaa" do
    patch instaa_url(@instaa), params: { instaa: { description: @instaa.description, title: @instaa.title } }
    assert_redirected_to instaa_url(@instaa)
  end

  test "should destroy instaa" do
    assert_difference('Instaa.count', -1) do
      delete instaa_url(@instaa)
    end

    assert_redirected_to instaas_url
  end
end
