require "application_system_test_case"

class TextStoriesTest < ApplicationSystemTestCase
  setup do
    @text_story = text_stories(:one)
  end

  test "visiting the index" do
    visit text_stories_url
    assert_selector "h1", text: "Text Stories"
  end

  test "creating a Text story" do
    visit text_stories_url
    click_on "New Text Story"

    fill_in "Description of story", with: @text_story.description_of_story
    fill_in "Name of story", with: @text_story.name_of_story
    click_on "Create Text story"

    assert_text "Text story was successfully created"
    click_on "Back"
  end

  test "updating a Text story" do
    visit text_stories_url
    click_on "Edit", match: :first

    fill_in "Description of story", with: @text_story.description_of_story
    fill_in "Name of story", with: @text_story.name_of_story
    click_on "Update Text story"

    assert_text "Text story was successfully updated"
    click_on "Back"
  end

  test "destroying a Text story" do
    visit text_stories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Text story was successfully destroyed"
  end
end
