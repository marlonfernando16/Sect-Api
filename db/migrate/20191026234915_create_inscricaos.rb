class CreateInscricaos < ActiveRecord::Migration[5.2]
  def change
    create_table :inscricaos do |t|
      t.string :nome
      t.integer :matricula
      t.boolean :status
      t.references :curso, foreign_key: true

      t.timestamps
    end
  end
end
