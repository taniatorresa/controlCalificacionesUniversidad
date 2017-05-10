class Presence < ApplicationRecord
belongs_to :period_has_group_has_student
enum presence_type: ['Asistio', 'Retardo', 'Falta', 'Justificante']
end
