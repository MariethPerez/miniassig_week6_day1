require 'test_helper'

class RepartosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reparto = repartos(:one)
  end

  test "should get index" do
    get repartos_url
    assert_response :success
  end

  test "should get new" do
    get new_reparto_url
    assert_response :success
  end

  test "should create reparto" do
    assert_difference('Reparto.count') do
      post repartos_url, params: { reparto: { actor_id: @reparto.actor_id, pelicula_id: @reparto.pelicula_id } }
    end

    assert_redirected_to reparto_url(Reparto.last)
  end

  test "should show reparto" do
    get reparto_url(@reparto)
    assert_response :success
  end

  test "should get edit" do
    get edit_reparto_url(@reparto)
    assert_response :success
  end

  test "should update reparto" do
    patch reparto_url(@reparto), params: { reparto: { actor_id: @reparto.actor_id, pelicula_id: @reparto.pelicula_id } }
    assert_redirected_to reparto_url(@reparto)
  end

  test "should destroy reparto" do
    assert_difference('Reparto.count', -1) do
      delete reparto_url(@reparto)
    end

    assert_redirected_to repartos_url
  end
end
