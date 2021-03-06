class SchoolCyclesController < ApplicationController
  before_action :set_school_cycle, only: [:show, :edit, :update, :destroy]

  # GET /school_cycles
  # GET /school_cycles.json
  def index
    @school_cycles = SchoolCycle.all
  end

  # GET /school_cycles/1
  # GET /school_cycles/1.json
  def show
  end

  # GET /school_cycles/new
  def new
    @school_cycle = SchoolCycle.new
  end

  # GET /school_cycles/1/edit
  def edit
  end

  # POST /school_cycles
  # POST /school_cycles.json
  def create
    @school_cycle = SchoolCycle.new(school_cycle_params)

    respond_to do |format|
      if @school_cycle.save
        format.html { redirect_to @school_cycle, notice: 'School cycle was successfully created.' }
        format.json { render :show, status: :created, location: @school_cycle }
      else
        format.html { render :new }
        format.json { render json: @school_cycle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /school_cycles/1
  # PATCH/PUT /school_cycles/1.json
  def update
    respond_to do |format|
      if @school_cycle.update(school_cycle_params)
        format.html { redirect_to @school_cycle, notice: 'School cycle was successfully updated.' }
        format.json { render :show, status: :ok, location: @school_cycle }
      else
        format.html { render :edit }
        format.json { render json: @school_cycle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /school_cycles/1
  # DELETE /school_cycles/1.json
  def destroy
    @school_cycle.destroy
    respond_to do |format|
      format.html { redirect_to school_cycles_url, notice: 'School cycle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_school_cycle
      @school_cycle = SchoolCycle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def school_cycle_params
      params.require(:school_cycle).permit(:nombre_ciclo,:career_id)
    end
end
