# client = Faye::Client.new('http://localhost:9000/faye')

# Thread.new {
#   EM.run {
#     client.subscribe('/all_messages') do |message|
#       Resque.enqueue(LoadAndSaveMessage, message)
#     end
#   }
# }
