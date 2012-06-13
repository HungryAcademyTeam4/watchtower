require 'redis'
require 'active_record'
require 'yaml'

dbconfig = YAML::load(File.open('config/database.yml'))[ENV['RAILS_ENV']]
ActiveRecord::Base.establish_connection(dbconfig)

class Message < ActiveRecord::Base
  attr_accessible :chat_room_id, :content, :user_name, :user_id, :chatbot_message_id
end


@redis = Redis.new(host: '127.0.0.1', port: 6379)

@redis.subscribe('conquerapp') do |on|
  on.message do |channel, message|
    parsed = JSON.parse(message)["msg"]["data"]
    message_contents = { chat_room_id:       parsed["chat_room_id"],
                         content:            parsed["content"],
                         user_id:            parsed["user_id"],
                         chatbot_message_id: parsed["id"],
                         user_name:          parsed["user_name"] }
    Message.create(message_contents)
  end
end