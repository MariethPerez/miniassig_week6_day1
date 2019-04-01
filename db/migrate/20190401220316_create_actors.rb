class CreateActors < ActiveRecord::Migration[5.2]
  def change
    create_table :actors do |t|
      t.string :name
      t.string :name_real
      t.date :fecha_nac

      t.timestamps
    end
  end
end
