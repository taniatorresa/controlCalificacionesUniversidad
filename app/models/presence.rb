class Presence < ApplicationRecord
belongs_to :student_has_subject
enum presence_type: ['Asistio', 'Retardo', 'Falta', 'Justificante']
end
