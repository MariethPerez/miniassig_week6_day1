require "application_system_test_case"

class RepartosTest < ApplicationSystemTestCase
  setup do
    @reparto = repartos(:one)
  end

  test "visiting the index" do
    visit repartos_url
    assert_selector "h1", text: "Repartos"
  end

  test "creating a Reparto" do
    visit repartos_url
    click_on "New Reparto"

    fill_in "Actor", with: @reparto.actor_id
    fill_in "Pelicula", with: @reparto.pelicula_id
    click_on "Create Reparto"

    assert_text "Reparto was successfully created"
    click_on "Back"
  end

  test "updating a Reparto" do
    visit repartos_url
    click_on "Edit", match: :first

    fill_in "Actor", with: @reparto.actor_id
    fill_in "Pelicula", with: @reparto.pelicula_id
    click_on "Update Reparto"

    assert_text "Reparto was successfully updated"
    click_on "Back"
  end

  test "destroying a Reparto" do
    visit repartos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reparto was successfully destroyed"
  end
end
