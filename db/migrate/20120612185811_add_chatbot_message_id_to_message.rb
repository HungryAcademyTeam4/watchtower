class AddChatbotMessageIdToMessage < ActiveRecord::Migration
  def change
    add_column :messages, :chatbot_message_id, :integer
  end
end
