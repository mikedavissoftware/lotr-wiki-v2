class ErasController < ApplicationController
  before_action :set_era, only: %i[ show edit update destroy ]

  # GET /eras or /eras.json
  def index
    @eras = Era.all
  end

  # GET /eras/1 or /eras/1.json
  def show
  end

  # GET /eras/new
  def new
    @era = Era.new
  end

  # GET /eras/1/edit
  def edit
  end

  # POST /eras or /eras.json
  def create
    @era = Era.new(era_params)

    respond_to do |format|
      if @era.save
        format.html { redirect_to era_url(@era), notice: "Era was successfully created." }
        format.json { render :show, status: :created, location: @era }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @era.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eras/1 or /eras/1.json
  def update
    respond_to do |format|
      if @era.update(era_params)
        format.html { redirect_to era_url(@era), notice: "Era was successfully updated." }
        format.json { render :show, status: :ok, location: @era }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @era.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eras/1 or /eras/1.json
  def destroy
    @era.destroy

    respond_to do |format|
      format.html { redirect_to eras_url, notice: "Era was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_era
      @era = Era.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def era_params
      params.require(:era).permit(:name)
    end
end
