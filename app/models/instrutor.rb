class Instrutor < ApplicationRecord
    has_many :instrutor_cursos
    has_many :cursos, through: :instrutor_cursos
end
