class CreateCassetes < ActiveRecord::Migration[5.2]
  def change
    create_table :cassetes do |t|
      t.string :formato
      t.references :pelicula, foreign_key: true

      t.timestamps
    end
  end
end
