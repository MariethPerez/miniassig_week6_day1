require "application_system_test_case"

class CassetesTest < ApplicationSystemTestCase
  setup do
    @cassete = cassetes(:one)
  end

  test "visiting the index" do
    visit cassetes_url
    assert_selector "h1", text: "Cassetes"
  end

  test "creating a Cassete" do
    visit cassetes_url
    click_on "New Cassete"

    fill_in "Formato", with: @cassete.formato
    fill_in "Pelicula", with: @cassete.pelicula_id
    click_on "Create Cassete"

    assert_text "Cassete was successfully created"
    click_on "Back"
  end

  test "updating a Cassete" do
    visit cassetes_url
    click_on "Edit", match: :first

    fill_in "Formato", with: @cassete.formato
    fill_in "Pelicula", with: @cassete.pelicula_id
    click_on "Update Cassete"

    assert_text "Cassete was successfully updated"
    click_on "Back"
  end

  test "destroying a Cassete" do
    visit cassetes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cassete was successfully destroyed"
  end
end
