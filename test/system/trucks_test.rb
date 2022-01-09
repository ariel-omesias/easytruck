require "application_system_test_case"

class TrucksTest < ApplicationSystemTestCase
  setup do
    @truck = trucks(:one)
  end

  test "visiting the index" do
    visit trucks_url
    assert_selector "h1", text: "Trucks"
  end

  test "creating a Truck" do
    visit trucks_url
    click_on "New Truck"

    check "Available" if @truck.available
    fill_in "Description", with: @truck.description
    fill_in "Image", with: @truck.image
    fill_in "Phone", with: @truck.phone
    fill_in "Rate", with: @truck.rate
    fill_in "Stock", with: @truck.stock
    fill_in "Tonnage", with: @truck.tonnage
    click_on "Create Truck"

    assert_text "Truck was successfully created"
    click_on "Back"
  end

  test "updating a Truck" do
    visit trucks_url
    click_on "Edit", match: :first

    check "Available" if @truck.available
    fill_in "Description", with: @truck.description
    fill_in "Image", with: @truck.image
    fill_in "Phone", with: @truck.phone
    fill_in "Rate", with: @truck.rate
    fill_in "Stock", with: @truck.stock
    fill_in "Tonnage", with: @truck.tonnage
    click_on "Update Truck"

    assert_text "Truck was successfully updated"
    click_on "Back"
  end

  test "destroying a Truck" do
    visit trucks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Truck was successfully destroyed"
  end
end
