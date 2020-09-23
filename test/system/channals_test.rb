require "application_system_test_case"

class ChannalsTest < ApplicationSystemTestCase
  setup do
    @channal = channals(:one)
  end

  test "visiting the index" do
    visit channals_url
    assert_selector "h1", text: "Channals"
  end

  test "creating a Channal" do
    visit channals_url
    click_on "New Channal"

    fill_in "Description", with: @channal.description
    check "Is active" if @channal.is_active
    fill_in "Title", with: @channal.title
    click_on "Create Channal"

    assert_text "Channal was successfully created"
    click_on "Back"
  end

  test "updating a Channal" do
    visit channals_url
    click_on "Edit", match: :first

    fill_in "Description", with: @channal.description
    check "Is active" if @channal.is_active
    fill_in "Title", with: @channal.title
    click_on "Update Channal"

    assert_text "Channal was successfully updated"
    click_on "Back"
  end

  test "destroying a Channal" do
    visit channals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Channal was successfully destroyed"
  end
end
