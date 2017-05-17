class CycleHasSubjectsController < ApplicationController
  before_action :set_cycle_has_subject, only: [:show, :edit, :update, :destroy]

  # GET /cycle_has_subjects
  # GET /cycle_has_subjects.json
  def index
    @cycle_has_subjects = CycleHasSubject.all
  end

  # GET /cycle_has_subjects/1
  # GET /cycle_has_subjects/1.json
  def show
  end

  # GET /cycle_has_subjects/new
  def new
    @cycle_has_subject = CycleHasSubject.new
  end

  # GET /cycle_has_subjects/1/edit
  def edit
  end

  # POST /cycle_has_subjects
  # POST /cycle_has_subjects.json
  def create
    @cycle_has_subject = CycleHasSubject.new(cycle_has_subject_params)

    respond_to do |format|
      if @cycle_has_subject.save
        format.html { redirect_to @cycle_has_subject, notice: 'Cycle has subject was successfully created.' }
        format.json { render :show, status: :created, location: @cycle_has_subject }
      else
        format.html { render :new }
        format.json { render json: @cycle_has_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cycle_has_subjects/1
  # PATCH/PUT /cycle_has_subjects/1.json
  def update
    respond_to do |format|
      if @cycle_has_subject.update(cycle_has_subject_params)
        format.html { redirect_to @cycle_has_subject, notice: 'Cycle has subject was successfully updated.' }
        format.json { render :show, status: :ok, location: @cycle_has_subject }
      else
        format.html { render :edit }
        format.json { render json: @cycle_has_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cycle_has_subjects/1
  # DELETE /cycle_has_subjects/1.json
  def destroy
    @cycle_has_subject.destroy
    respond_to do |format|
      format.html { redirect_to cycle_has_subjects_url, notice: 'Cycle has subject was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cycle_has_subject
      @cycle_has_subject = CycleHasSubject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cycle_has_subject_params
      params.require(:cycle_has_subject).permit(:lunes, :martes, :miercoles, :jueves, :viernes, :sabado, :horario_clases,:subject_id,:teacher_id,:school_cycle_id)
    end
end
