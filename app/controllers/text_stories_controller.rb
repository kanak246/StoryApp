class TextStoriesController < ApplicationController
  before_action :set_text_story, only: %i[ show edit update destroy ]

  # GET /text_stories or /text_stories.json
  def index
    @text_stories = TextStory.all
  end

  # GET /text_stories/1 or /text_stories/1.json
  def show
  end

  # GET /text_stories/new
  def new
    @text_story = TextStory.new
  end

  # GET /text_stories/1/edit
  def edit
  end

  # POST /text_stories or /text_stories.json
  def create
    @text_story = TextStory.new(text_story_params)

    respond_to do |format|
      if @text_story.save
        format.html { redirect_to @text_story, notice: "Text story was successfully created." }
        format.json { render :show, status: :created, location: @text_story }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @text_story.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /text_stories/1 or /text_stories/1.json
  def update
    respond_to do |format|
      if @text_story.update(text_story_params)
        format.html { redirect_to @text_story, notice: "Text story was successfully updated." }
        format.json { render :show, status: :ok, location: @text_story }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @text_story.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /text_stories/1 or /text_stories/1.json
  def destroy
    @text_story.destroy
    respond_to do |format|
      format.html { redirect_to text_stories_url, notice: "Text story was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_text_story
      @text_story = TextStory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def text_story_params
      params.require(:text_story).permit(:name_of_story, :description_of_story)
    end
end
