class CreateCursos < ActiveRecord::Migration[5.2]
  def change
    create_table :cursos do |t|
      t.string :titulo
      t.integer :carga_horaria
      t.integer :vagas
      t.references :tipo, foreign_key: true

      t.timestamps
    end
  end
end
