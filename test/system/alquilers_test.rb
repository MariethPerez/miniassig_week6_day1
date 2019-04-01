require "application_system_test_case"

class AlquilersTest < ApplicationSystemTestCase
  setup do
    @alquiler = alquilers(:one)
  end

  test "visiting the index" do
    visit alquilers_url
    assert_selector "h1", text: "Alquilers"
  end

  test "creating a Alquiler" do
    visit alquilers_url
    click_on "New Alquiler"

    fill_in "Cassete", with: @alquiler.cassete_id
    fill_in "Fecha alquiler", with: @alquiler.fecha_alquiler
    fill_in "Fecha devolucion", with: @alquiler.fecha_devolucion
    fill_in "Miembro", with: @alquiler.miembro_id
    click_on "Create Alquiler"

    assert_text "Alquiler was successfully created"
    click_on "Back"
  end

  test "updating a Alquiler" do
    visit alquilers_url
    click_on "Edit", match: :first

    fill_in "Cassete", with: @alquiler.cassete_id
    fill_in "Fecha alquiler", with: @alquiler.fecha_alquiler
    fill_in "Fecha devolucion", with: @alquiler.fecha_devolucion
    fill_in "Miembro", with: @alquiler.miembro_id
    click_on "Update Alquiler"

    assert_text "Alquiler was successfully updated"
    click_on "Back"
  end

  test "destroying a Alquiler" do
    visit alquilers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Alquiler was successfully destroyed"
  end
end
