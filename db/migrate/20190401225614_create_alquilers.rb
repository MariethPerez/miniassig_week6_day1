class CreateAlquilers < ActiveRecord::Migration[5.2]
  def change
    create_table :alquilers do |t|
      t.date :fecha_alquiler
      t.date :fecha_devolucion
      t.references :cassete, foreign_key: true
      t.references :miembro, foreign_key: true

      t.timestamps
    end
  end
end
