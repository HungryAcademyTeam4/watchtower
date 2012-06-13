class Api::V1::MessagesController < Api::V1::ApiController
  def index
    @messages = Message.search(params[:query])
  end
end