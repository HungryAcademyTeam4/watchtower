class LoadAndSaveMessage
  @queue = :get_message_queue

  def self.perform(message)
    message_contents = { chat_room_id: message["chat_room_id"],
                         content: message["content"],
                         user_id: message["user_id"],
                         chatbot_message_id: message["id"],
                         user_display_name: message["user_name"] }
    Message.create(message_contents)
  end
end