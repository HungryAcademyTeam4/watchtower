class Api::V1::MessagesController < Api::V1::ApiController
  def index
    @messages = Message.all
  end
end