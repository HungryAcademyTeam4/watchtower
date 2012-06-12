class Message < ActiveRecord::Base
  attr_accessible :chat_room_id, :content, :user_name, :user_id, :chatbot_message_id
end
