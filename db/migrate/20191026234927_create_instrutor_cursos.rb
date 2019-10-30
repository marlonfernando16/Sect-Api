class CreateInstrutorCursos < ActiveRecord::Migration[5.2]
  def change
    create_table :instrutor_cursos do |t|
      t.references :curso, foreign_key: true
      t.references :instrutor, foreign_key: true

      t.timestamps
    end
  end
end
