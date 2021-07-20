class CreateTextStories < ActiveRecord::Migration[6.1]
  def change
    create_table :text_stories do |t|
      t.string :name_of_story
      t.string :description_of_story

      t.timestamps
    end
  end
end
