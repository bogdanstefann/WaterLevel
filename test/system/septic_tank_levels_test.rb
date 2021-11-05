require "application_system_test_case"

class SepticTankLevelsTest < ApplicationSystemTestCase
  setup do
    @septic_tank_level = septic_tank_levels(:one)
  end

  test "visiting the index" do
    visit septic_tank_levels_url
    assert_selector "h1", text: "Septic Tank Levels"
  end

  test "creating a Septic tank level" do
    visit septic_tank_levels_url
    click_on "New Septic Tank Level"

    fill_in "Level", with: @septic_tank_level.level
    fill_in "Measured time", with: @septic_tank_level.measured_time
    click_on "Create Septic tank level"

    assert_text "Septic tank level was successfully created"
    click_on "Back"
  end

  test "updating a Septic tank level" do
    visit septic_tank_levels_url
    click_on "Edit", match: :first

    fill_in "Level", with: @septic_tank_level.level
    fill_in "Measured time", with: @septic_tank_level.measured_time
    click_on "Update Septic tank level"

    assert_text "Septic tank level was successfully updated"
    click_on "Back"
  end

  test "destroying a Septic tank level" do
    visit septic_tank_levels_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Septic tank level was successfully destroyed"
  end
end
