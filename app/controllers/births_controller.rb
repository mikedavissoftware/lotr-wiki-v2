class BirthsController < ApplicationController
  before_action :set_birth, only: %i[ show edit update destroy ]

  # GET /births or /births.json
  def index
    @births = Birth.all
  end

  # GET /births/1 or /births/1.json
  def show
  end

  # GET /births/new
  def new
    @birth = Birth.new
  end

  # GET /births/1/edit
  def edit
  end

  # POST /births or /births.json
  def create
    @birth = Birth.new(birth_params)

    respond_to do |format|
      if @birth.save
        format.html { redirect_to birth_url(@birth), notice: "Birth was successfully created." }
        format.json { render :show, status: :created, location: @birth }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @birth.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /births/1 or /births/1.json
  def update
    respond_to do |format|
      if @birth.update(birth_params)
        format.html { redirect_to birth_url(@birth), notice: "Birth was successfully updated." }
        format.json { render :show, status: :ok, location: @birth }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @birth.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /births/1 or /births/1.json
  def destroy
    @birth.destroy

    respond_to do |format|
      format.html { redirect_to births_url, notice: "Birth was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_birth
      @birth = Birth.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def birth_params
      params.require(:birth).permit(:year, :era_id, :movie_character_id)
    end
end
