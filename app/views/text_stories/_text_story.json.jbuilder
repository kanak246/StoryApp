json.extract! text_story, :id, :name_of_story, :description_of_story, :created_at, :updated_at
json.url text_story_url(text_story, format: :json)
