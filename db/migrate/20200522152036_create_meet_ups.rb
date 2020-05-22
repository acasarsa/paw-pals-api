class CreateMeetUps < ActiveRecord::Migration[6.0]
  def change
    create_table :meet_ups do |t|
      t.date :date
      t.integer :first_dog_user_pair_id
      t.integer :second_dog_user_pair_id

      t.timestamps
    end
  end
end
