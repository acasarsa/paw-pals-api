class CreateDogUserPairs < ActiveRecord::Migration[6.0]
  def change
    create_table :dog_user_pairs do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :dog, null: false, foreign_key: true

      t.timestamps
    end
  end
end
