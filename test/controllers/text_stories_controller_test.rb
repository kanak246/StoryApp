require "test_helper"

class TextStoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @text_story = text_stories(:one)
  end

  test "should get index" do
    get text_stories_url
    assert_response :success
  end

  test "should get new" do
    get new_text_story_url
    assert_response :success
  end

  test "should create text_story" do
    assert_difference('TextStory.count') do
      post text_stories_url, params: { text_story: { description_of_story: @text_story.description_of_story, name_of_story: @text_story.name_of_story } }
    end

    assert_redirected_to text_story_url(TextStory.last)
  end

  test "should show text_story" do
    get text_story_url(@text_story)
    assert_response :success
  end

  test "should get edit" do
    get edit_text_story_url(@text_story)
    assert_response :success
  end

  test "should update text_story" do
    patch text_story_url(@text_story), params: { text_story: { description_of_story: @text_story.description_of_story, name_of_story: @text_story.name_of_story } }
    assert_redirected_to text_story_url(@text_story)
  end

  test "should destroy text_story" do
    assert_difference('TextStory.count', -1) do
      delete text_story_url(@text_story)
    end

    assert_redirected_to text_stories_url
  end
end
