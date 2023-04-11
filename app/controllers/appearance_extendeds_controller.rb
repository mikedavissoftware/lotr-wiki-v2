class AppearanceExtendedsController < ApplicationController
  before_action :set_appearance_extended, only: %i[ show edit update destroy ]

  # GET /appearance_extendeds or /appearance_extendeds.json
  def index
    @appearance_extendeds = AppearanceExtended.all
  end

  # GET /appearance_extendeds/1 or /appearance_extendeds/1.json
  def show
  end

  # GET /appearance_extendeds/new
  def new
    @appearance_extended = AppearanceExtended.new
  end

  # GET /appearance_extendeds/1/edit
  def edit
  end

  # POST /appearance_extendeds or /appearance_extendeds.json
  def create
    @appearance_extended = AppearanceExtended.new(appearance_extended_params)

    respond_to do |format|
      if @appearance_extended.save
        format.html { redirect_to appearance_extended_url(@appearance_extended), notice: "Appearance extended was successfully created." }
        format.json { render :show, status: :created, location: @appearance_extended }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @appearance_extended.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appearance_extendeds/1 or /appearance_extendeds/1.json
  def update
    respond_to do |format|
      if @appearance_extended.update(appearance_extended_params)
        format.html { redirect_to appearance_extended_url(@appearance_extended), notice: "Appearance extended was successfully updated." }
        format.json { render :show, status: :ok, location: @appearance_extended }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @appearance_extended.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appearance_extendeds/1 or /appearance_extendeds/1.json
  def destroy
    @appearance_extended.destroy

    respond_to do |format|
      format.html { redirect_to appearance_extendeds_url, notice: "Appearance extended was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appearance_extended
      @appearance_extended = AppearanceExtended.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def appearance_extended_params
      params.require(:appearance_extended).permit(:minute, :second, :movie_id, :image, :body)
    end
end
