class ScoresController < ApplicationController
  before_action :set_score, only: [:show, :edit, :update, :destroy]

  # GET /scores
  # GET /scores.json
  def index
    @scores = Score.all
  end

  # GET /scores/1
  # GET /scores/1.json
  def show
  end

  # GET /scores/new
  def new
    @score = Score.new
  end

  # GET /scores/1/edit
  def edit
  end

  # POST /scores
  # POST /scores.json
  def create
    @score = Score.new(score_params)

    respond_to do |format|
      if @score.save
        format.html { redirect_to @score, notice: 'Score was successfully created.' }
        format.json { render :show, status: :created, location: @score }
      else
        format.html { render :new }
        format.json { render json: @score.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scores/1
  # PATCH/PUT /scores/1.json
  def update
    respond_to do |format|
      if @score.update(score_params)
        format.html { redirect_to @score, notice: 'Score was successfully updated.' }
        format.json { render :show, status: :ok, location: @score }
      else
        format.html { render :edit }
        format.json { render json: @score.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scores/1
  # DELETE /scores/1.json
  def destroy
    @score.destroy
    respond_to do |format|
      format.html { redirect_to scores_url, notice: 'Score was successfully destroyed.' }
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
    def set_score
      @score = Score.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def score_params
      params.require(:score).permit(:aplicar_parcial, :score_type, :calification,:student_has_subject_id)
    end
end
