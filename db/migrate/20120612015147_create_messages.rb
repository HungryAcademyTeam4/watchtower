class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :user_id
      t.integer :chat_room_id
      t.string :content
      t.string :user_display_name

      t.timestamps
    end
  end
end
