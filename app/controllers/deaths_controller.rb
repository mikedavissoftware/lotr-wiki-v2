class DeathsController < ApplicationController
  before_action :set_death, only: %i[ show edit update destroy ]

  # GET /deaths or /deaths.json
  def index
    @deaths = Death.all
  end

  # GET /deaths/1 or /deaths/1.json
  def show
  end

  # GET /deaths/new
  def new
    @death = Death.new
  end

  # GET /deaths/1/edit
  def edit
  end

  # POST /deaths or /deaths.json
  def create
    @death = Death.new(death_params)

    respond_to do |format|
      if @death.save
        format.html { redirect_to death_url(@death), notice: "Death was successfully created." }
        format.json { render :show, status: :created, location: @death }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @death.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deaths/1 or /deaths/1.json
  def update
    respond_to do |format|
      if @death.update(death_params)
        format.html { redirect_to death_url(@death), notice: "Death was successfully updated." }
        format.json { render :show, status: :ok, location: @death }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @death.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deaths/1 or /deaths/1.json
  def destroy
    @death.destroy

    respond_to do |format|
      format.html { redirect_to deaths_url, notice: "Death was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_death
      @death = Death.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def death_params
      params.require(:death).permit(:age, :year, :era_id, :movie_character_id)
    end
end
