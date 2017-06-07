class PresencesController < ApplicationController
  before_action :set_presence, only: [:show, :edit, :update, :destroy]

  # GET /presences
  # GET /presences.json
  def index
    @presences = Presence.all
  end

  # GET /presences/1
  # GET /presences/1.json
  def show
  end

  # GET /presences/new
  def new
    @presence = Presence.new
  end

  # GET /presences/1/edit
  def edit
  end

  # POST /presences
  # POST /presences.json
  def create
    @presence = Presence.new(presence_params)

    respond_to do |format|
      if @presence.save
        format.html { redirect_to @presence, notice: 'Presence was successfully created.' }
        format.json { render :show, status: :created, location: @presence }
      else
        format.html { render :new }
        format.json { render json: @presence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /presences/1
  # PATCH/PUT /presences/1.json
  def update
    respond_to do |format|
      if @presence.update(presence_params)
        format.html { redirect_to @presence, notice: 'Presence was successfully updated.' }
        format.json { render :show, status: :ok, location: @presence }
      else
        format.html { render :edit }
        format.json { render json: @presence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /presences/1
  # DELETE /presences/1.json
  def destroy
    @presence.destroy
    respond_to do |format|
      format.html { redirect_to presences_url, notice: 'Presence was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  def get_subjects
    if params[:s].present?
      s_id = params[:s].to_i
      subjects_by_student = Subject.joins("INNER JOIN cycle_has_subjects ON subjects.id = cycle_has_subjects.subject_id INNER JOIN student_has_subjects ON cycle_has_subjects.id = student_has_subjects.cycle_has_subject_id").where("student_id = ?", s_id)
      msg = { "success": "true", "subjects": subjects_by_student }
    else
      msg = { "success": false, "subjects": 0 }
    end

    render json: msg
  end

  # Get created group by specific student and subject
  def get_group
    if params[:stu].present? && params[:sub].present?
      student_id = params[:stu].to_i
      subject_id = params[:sub].to_i
      student_subject = StudentHasSubject.joins(:cycle_has_subject).where("student_id = ? AND subject_id = ?", student_id, subject_id).first
      if student_subject.present?
        msg = { "success": "true", "student_subject": student_subject.id }
      else
        msg = { "success": false, "student_subject": nil }
      end
    else
      msg = { "success": false, "student_subject": nil }
    end

    render json: msg
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_presence
      @presence = Presence.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def presence_params
      params.require(:presence).permit(:presence_type, :fecha_asistencia,:student_has_subject_id)
    end
end
