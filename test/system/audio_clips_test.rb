require "application_system_test_case"

class AudioClipsTest < ApplicationSystemTestCase
  setup do
    @audio_clip = audio_clips(:one)
  end

  test "visiting the index" do
    visit audio_clips_url
    assert_selector "h1", text: "Audio Clips"
  end

  test "creating a Audio clip" do
    visit audio_clips_url
    click_on "New Audio Clip"

    fill_in "Title", with: @audio_clip.title
    click_on "Create Audio clip"

    assert_text "Audio clip was successfully created"
    click_on "Back"
  end

  test "updating a Audio clip" do
    visit audio_clips_url
    click_on "Edit", match: :first

    fill_in "Title", with: @audio_clip.title
    click_on "Update Audio clip"

    assert_text "Audio clip was successfully updated"
    click_on "Back"
  end

  test "destroying a Audio clip" do
    visit audio_clips_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Audio clip was successfully destroyed"
  end
end
