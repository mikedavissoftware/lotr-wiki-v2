class AppearanceTheatricalsController < ApplicationController
  before_action :set_appearance_theatrical, only: %i[ show edit update destroy ]

  # GET /appearance_theatricals or /appearance_theatricals.json
  def index
    @appearance_theatricals = AppearanceTheatrical.all
  end

  # GET /appearance_theatricals/1 or /appearance_theatricals/1.json
  def show
  end

  # GET /appearance_theatricals/new
  def new
    @appearance_theatrical = AppearanceTheatrical.new
  end

  # GET /appearance_theatricals/1/edit
  def edit
  end

  # POST /appearance_theatricals or /appearance_theatricals.json
  def create
    @appearance_theatrical = AppearanceTheatrical.new(appearance_theatrical_params)

    respond_to do |format|
      if @appearance_theatrical.save
        format.html { redirect_to appearance_theatrical_url(@appearance_theatrical), notice: "Appearance theatrical was successfully created." }
        format.json { render :show, status: :created, location: @appearance_theatrical }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @appearance_theatrical.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appearance_theatricals/1 or /appearance_theatricals/1.json
  def update
    respond_to do |format|
      if @appearance_theatrical.update(appearance_theatrical_params)
        format.html { redirect_to appearance_theatrical_url(@appearance_theatrical), notice: "Appearance theatrical was successfully updated." }
        format.json { render :show, status: :ok, location: @appearance_theatrical }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @appearance_theatrical.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appearance_theatricals/1 or /appearance_theatricals/1.json
  def destroy
    @appearance_theatrical.destroy

    respond_to do |format|
      format.html { redirect_to appearance_theatricals_url, notice: "Appearance theatrical was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appearance_theatrical
      @appearance_theatrical = AppearanceTheatrical.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def appearance_theatrical_params
      params.require(:appearance_theatrical).permit(:minute, :second, :movie_id, :image, :body)
    end
end
