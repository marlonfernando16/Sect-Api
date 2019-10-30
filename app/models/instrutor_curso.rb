class InstrutorCurso < ApplicationRecord
  belongs_to :curso
  belongs_to :instrutor
end
