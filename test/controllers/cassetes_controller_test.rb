require 'test_helper'

class CassetesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cassete = cassetes(:one)
  end

  test "should get index" do
    get cassetes_url
    assert_response :success
  end

  test "should get new" do
    get new_cassete_url
    assert_response :success
  end

  test "should create cassete" do
    assert_difference('Cassete.count') do
      post cassetes_url, params: { cassete: { formato: @cassete.formato, pelicula_id: @cassete.pelicula_id } }
    end

    assert_redirected_to cassete_url(Cassete.last)
  end

  test "should show cassete" do
    get cassete_url(@cassete)
    assert_response :success
  end

  test "should get edit" do
    get edit_cassete_url(@cassete)
    assert_response :success
  end

  test "should update cassete" do
    patch cassete_url(@cassete), params: { cassete: { formato: @cassete.formato, pelicula_id: @cassete.pelicula_id } }
    assert_redirected_to cassete_url(@cassete)
  end

  test "should destroy cassete" do
    assert_difference('Cassete.count', -1) do
      delete cassete_url(@cassete)
    end

    assert_redirected_to cassetes_url
  end
end
