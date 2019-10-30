class Tipo < ApplicationRecord
    include Searchable
    has_many :cursos
end
