class ScorePdf < Prawn::Document
  def initialize(scores)
    super()
    @scores= Score.all
    image"#{Prawn::DATADIR}/logo.png"
    data_style

  end
  def  data_style
    table data_fill do
      row(0).font_style= :bold
      columns(1..3).align = :right
      self.row_colors = ["DDDDDD","FFFFFF"]
      self.header =true
      font_size= 5
    end
  end

  def data_fill
  [["Alumno","Carrera","Tipo de materia","Materia","Matricula","Score type","Calification"]]  +
    @scores.map do |score|
    [score.student_has_subject.student.nombre_estudiante ,
    score.student_has_subject.cycle_has_subject.school_cycle.career.nombre_carrera ,
    score.student_has_subject.student_subject_type,
    score.student_has_subject.cycle_has_subject.subject.nombre_materia ,
    score.student_has_subject.student.matricula,
    score.score_type, score.calification]
    end
  end

end
