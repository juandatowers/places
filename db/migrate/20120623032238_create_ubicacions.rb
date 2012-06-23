class CreateUbicacions < ActiveRecord::Migration
  def change
    create_table :ubicacions do |t|
      t.string :direccion
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
