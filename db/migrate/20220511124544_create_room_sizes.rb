class CreateRoomSizes < ActiveRecord::Migration[6.0]
  def change
    create_table :room_sizes do |t|

      t.timestamps
    end
  end
end
