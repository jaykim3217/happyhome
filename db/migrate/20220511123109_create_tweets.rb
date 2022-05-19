class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.integer :room_size_id, null: false
      t.integer :room_type_id, null: false
      t.string :room_name, null: false
      t.integer :space_id, null: false
      t.text :room_explain, null: false
      t.references :user, null: false, foreign_key: true


      t.timestamps
    end
  end
end
