require 'test_helper'

class MiembrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @miembro = miembros(:one)
  end

  test "should get index" do
    get miembros_url
    assert_response :success
  end

  test "should get new" do
    get new_miembro_url
    assert_response :success
  end

  test "should create miembro" do
    assert_difference('Miembro.count') do
      post miembros_url, params: { miembro: { direccion: @miembro.direccion, name: @miembro.name, telefono: @miembro.telefono } }
    end

    assert_redirected_to miembro_url(Miembro.last)
  end

  test "should show miembro" do
    get miembro_url(@miembro)
    assert_response :success
  end

  test "should get edit" do
    get edit_miembro_url(@miembro)
    assert_response :success
  end

  test "should update miembro" do
    patch miembro_url(@miembro), params: { miembro: { direccion: @miembro.direccion, name: @miembro.name, telefono: @miembro.telefono } }
    assert_redirected_to miembro_url(@miembro)
  end

  test "should destroy miembro" do
    assert_difference('Miembro.count', -1) do
      delete miembro_url(@miembro)
    end

    assert_redirected_to miembros_url
  end
end
