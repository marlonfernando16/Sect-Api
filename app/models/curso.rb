class Curso < ApplicationRecord
  belongs_to :tipo
  has_many :instrutor_cursos
  has_many :instrutors, through: :instrutor_cursos
  has_many :inscricaos
end
