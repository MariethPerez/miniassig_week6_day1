class CreateMiembros < ActiveRecord::Migration[5.2]
  def change
    create_table :miembros do |t|
      t.string :name
      t.string :telefono
      t.string :direccion

      t.timestamps
    end
  end
end
