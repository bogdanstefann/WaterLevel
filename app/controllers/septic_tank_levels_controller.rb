class SepticTankLevelsController < ApplicationController
  before_action :set_septic_tank_level, only: %i[ show edit update destroy ]

  # GET /septic_tank_levels or /septic_tank_levels.json
  def index
    @septic_tank_levels = SepticTankLevel.all
  end

  # GET /septic_tank_levels/1 or /septic_tank_levels/1.json
  def show
  end

  # GET /septic_tank_levels/new
  def new
    @septic_tank_level = SepticTankLevel.new
  end

  # GET /septic_tank_levels/1/edit
  def edit
  end

  # POST /septic_tank_levels or /septic_tank_levels.json
  def create
    @septic_tank_level = SepticTankLevel.new(septic_tank_level_params)

    respond_to do |format|
      if @septic_tank_level.save
        format.html { redirect_to @septic_tank_level, notice: "Septic tank level was successfully created." }
        format.json { render :show, status: :created, location: @septic_tank_level }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @septic_tank_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /septic_tank_levels/1 or /septic_tank_levels/1.json
  def update
    respond_to do |format|
      if @septic_tank_level.update(septic_tank_level_params)
        format.html { redirect_to @septic_tank_level, notice: "Septic tank level was successfully updated." }
        format.json { render :show, status: :ok, location: @septic_tank_level }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @septic_tank_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /septic_tank_levels/1 or /septic_tank_levels/1.json
  def destroy
    @septic_tank_level.destroy
    respond_to do |format|
      format.html { redirect_to septic_tank_levels_url, notice: "Septic tank level was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_septic_tank_level
      @septic_tank_level = SepticTankLevel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def septic_tank_level_params
      params.require(:septic_tank_level).permit(:level, :measured_time)
    end
end
