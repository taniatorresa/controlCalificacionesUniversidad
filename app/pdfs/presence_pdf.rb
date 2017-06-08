class PresencePdf < Prawn::Document
  def initialize(presences)
    super()
    @presences= Presence.all
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
  [["Alumno","Carrera","Tipo de materia","Materia","Matricula","Presence type","Asistencia"]]  +
    @presences.map do |presence|
    [presence.student_has_subject.student.nombre_estudiante ,
    presence.student_has_subject.cycle_has_subject.school_cycle.career.nombre_carrera ,
    presence.student_has_subject.student_subject_type,
    presence.student_has_subject.cycle_has_subject.subject.nombre_materia ,
    presence.student_has_subject.student.matricula,
    presence.presence_type, presence.fecha_asistencia]
    end
  end

end
