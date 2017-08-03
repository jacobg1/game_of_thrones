class CreateHouses < ActiveRecord::Migration[5.1]
  def change
    create_table :houses do |t|
      t.string :house_name
      t.string :moto
      t.string :sigil
      t.string :house_photo_url
    end
  end
end
