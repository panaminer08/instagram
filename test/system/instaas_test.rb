require "application_system_test_case"

class InstaasTest < ApplicationSystemTestCase
  setup do
    @instaa = instaas(:one)
  end

  test "visiting the index" do
    visit instaas_url
    assert_selector "h1", text: "Instaas"
  end

  test "creating a Instaa" do
    visit instaas_url
    click_on "New Instaa"

    fill_in "Description", with: @instaa.description
    fill_in "Title", with: @instaa.title
    click_on "Create Instaa"

    assert_text "Instaa was successfully created"
    click_on "Back"
  end

  test "updating a Instaa" do
    visit instaas_url
    click_on "Edit", match: :first

    fill_in "Description", with: @instaa.description
    fill_in "Title", with: @instaa.title
    click_on "Update Instaa"

    assert_text "Instaa was successfully updated"
    click_on "Back"
  end

  test "destroying a Instaa" do
    visit instaas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Instaa was successfully destroyed"
  end
end
