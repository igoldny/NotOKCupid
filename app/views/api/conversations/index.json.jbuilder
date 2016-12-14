
@conversations.each do |conversation|
  json.set! conversation.id do
    json.started_user conversation.started_user
    json.received_user conversation.received_user
    json.user_one_id conversation.user_one_id
    json.user_two_id conversation.user_two_id
    json.last_message conversation.messages.last
  end
end
