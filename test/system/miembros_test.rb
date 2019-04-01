require "application_system_test_case"

class MiembrosTest < ApplicationSystemTestCase
  setup do
    @miembro = miembros(:one)
  end

  test "visiting the index" do
    visit miembros_url
    assert_selector "h1", text: "Miembros"
  end

  test "creating a Miembro" do
    visit miembros_url
    click_on "New Miembro"

    fill_in "Direccion", with: @miembro.direccion
    fill_in "Name", with: @miembro.name
    fill_in "Telefono", with: @miembro.telefono
    click_on "Create Miembro"

    assert_text "Miembro was successfully created"
    click_on "Back"
  end

  test "updating a Miembro" do
    visit miembros_url
    click_on "Edit", match: :first

    fill_in "Direccion", with: @miembro.direccion
    fill_in "Name", with: @miembro.name
    fill_in "Telefono", with: @miembro.telefono
    click_on "Update Miembro"

    assert_text "Miembro was successfully updated"
    click_on "Back"
  end

  test "destroying a Miembro" do
    visit miembros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Miembro was successfully destroyed"
  end
end
