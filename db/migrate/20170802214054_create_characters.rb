class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.string :char_name
      t.string :photo_url
      t.references :house, index: true, foreign_key: true
    end
  end
end
