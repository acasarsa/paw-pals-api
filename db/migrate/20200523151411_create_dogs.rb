class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :breed
      t.text :status
      t.string :age
      t.string :gender
      t.string :size
      t.string :image
      t.text :description
      t.text :favorite_toy
      t.string :human
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
