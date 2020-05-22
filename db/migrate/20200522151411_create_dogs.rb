class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :breed
      t.string :tagline
      t.string :age
      t.string :gender
      t.string :size
      t.string :image
      t.string :description

      t.timestamps
    end
  end
end
