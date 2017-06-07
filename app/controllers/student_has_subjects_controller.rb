class StudentHasSubjectsController < ApplicationController
  before_action :set_student_has_subject, only: [:show, :edit, :update, :destroy]

  # GET /student_has_subjects
  # GET /student_has_subjects.json
  def index
    @student_has_subjects = StudentHasSubject.all
  end

  # GET /student_has_subjects/1
  # GET /student_has_subjects/1.json
  def show
  end

  # GET /student_has_subjects/new
  def new
    @student_has_subject = StudentHasSubject.new
  end

  # GET /student_has_subjects/1/edit
  def edit
  end

  # POST /student_has_subjects
  # POST /student_has_subjects.json
  def create
    @student_has_subject = StudentHasSubject.new(student_has_subject_params)

    respond_to do |format|
      if @student_has_subject.save
        format.html { redirect_to @student_has_subject, notice: 'Student has subject was successfully created.' }
        format.json { render :show, status: :created, location: @student_has_subject }
      else
        format.html { render :new }
        format.json { render json: @student_has_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_has_subjects/1
  # PATCH/PUT /student_has_subjects/1.json
  def update
    respond_to do |format|
      if @student_has_subject.update(student_has_subject_params)
        format.html { redirect_to @student_has_subject, notice: 'Student has subject was successfully updated.' }
        format.json { render :show, status: :ok, location: @student_has_subject }
      else
        format.html { render :edit }
        format.json { render json: @student_has_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_has_subjects/1
  # DELETE /student_has_subjects/1.json
  def destroy
    @student_has_subject.destroy
    respond_to do |format|
      format.html { redirect_to student_has_subjects_url, notice: 'Student has subject was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def get_subjects
    if params[:c].present?
      sc_id = params[:c].to_i
      subjects = Subject.joins(:cycle_has_subjects).where("school_cycle_id = ?", sc_id)
      msg = { "success": "true", "subjects": subjects }
    else
      msg = { "success": false, "subjects": 0 }
    end

    render json: msg
  end

  # Get created group by specific school_cycle and subject
  def get_group
    if params[:c].present? && params[:s].present?
      sc_id = params[:c].to_i
      s_id = params[:s].to_i
      group = CycleHasSubject.where("school_cycle_id = ? AND subject_id = ?", sc_id, s_id).first
      if group.present?
        msg = { "success": "true", "group": group.id }
      else
        msg = { "success": false, "group": nil }
      end
    else
      msg = { "success": false, "group": nil }
    end

    render json: msg
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_has_subject
      @student_has_subject =StudentHasSubject.includes(:student, :cycle_has_subject).find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_has_subject_params
      params.require(:student_has_subject).permit(:student_subject_type,:student_id,:cycle_has_subject_id
      )
    end
end
