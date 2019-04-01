class CreateRepartos < ActiveRecord::Migration[5.2]
  def change
    create_table :repartos do |t|
      t.references :actor, foreign_key: true
      t.references :pelicula, foreign_key: true

      t.timestamps
    end
  end
end
