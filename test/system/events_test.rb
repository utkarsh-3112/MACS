require "application_system_test_case"

class EventsTest < ApplicationSystemTestCase
  setup do
    @event = events(:one)
  end

  test "visiting the index" do
    visit events_url
    assert_selector "h1", text: "Events"
  end

  test "should create event" do
    visit events_url
    click_on "New event"

    fill_in "Coordinator", with: @event.coordinator
    fill_in "Date", with: @event.date
    fill_in "Event type", with: @event.event_type
    fill_in "Name", with: @event.name
    fill_in "Organizer", with: @event.organizer
    fill_in "Sponsor", with: @event.sponsor
    fill_in "Status", with: @event.status
    click_on "Create Event"

    assert_text "Event was successfully created"
    click_on "Back"
  end

  test "should update Event" do
    visit event_url(@event)
    click_on "Edit this event", match: :first

    fill_in "Coordinator", with: @event.coordinator
    fill_in "Date", with: @event.date
    fill_in "Event type", with: @event.event_type
    fill_in "Name", with: @event.name
    fill_in "Organizer", with: @event.organizer
    fill_in "Sponsor", with: @event.sponsor
    fill_in "Status", with: @event.status
    click_on "Update Event"

    assert_text "Event was successfully updated"
    click_on "Back"
  end

  test "should destroy Event" do
    visit event_url(@event)
    click_on "Destroy this event", match: :first

    assert_text "Event was successfully destroyed"
  end
end
