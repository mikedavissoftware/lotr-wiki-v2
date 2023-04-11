class MovieCharactersController < ApplicationController
  before_action :set_movie_character, only: %i[ show edit update destroy ]

  # GET /movie_characters or /movie_characters.json
  def index
    @movie_characters = MovieCharacter.all
  end

  # GET /movie_characters/1 or /movie_characters/1.json
  def show
  end

  # GET /movie_characters/new
  def new
    @movie_character = MovieCharacter.new
  end

  # GET /movie_characters/1/edit
  def edit
  end

  # POST /movie_characters or /movie_characters.json
  def create
    @movie_character = MovieCharacter.new(movie_character_params)

    respond_to do |format|
      if @movie_character.save
        format.html { redirect_to movie_character_url(@movie_character), notice: "Movie character was successfully created." }
        format.json { render :show, status: :created, location: @movie_character }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @movie_character.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movie_characters/1 or /movie_characters/1.json
  def update
    respond_to do |format|
      if @movie_character.update(movie_character_params)
        format.html { redirect_to movie_character_url(@movie_character), notice: "Movie character was successfully updated." }
        format.json { render :show, status: :ok, location: @movie_character }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @movie_character.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movie_characters/1 or /movie_characters/1.json
  def destroy
    @movie_character.destroy

    respond_to do |format|
      format.html { redirect_to movie_characters_url, notice: "Movie character was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie_character
      @movie_character = MovieCharacter.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def movie_character_params
      params.require(:movie_character).permit(:name, :image_url, :one_wiki_url, :tolkien_wiki_url, :pronunciation, :gender_id, :height, :culture_id, :spouse, :mother, :father, :description)
    end
end
