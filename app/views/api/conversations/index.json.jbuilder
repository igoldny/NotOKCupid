json.conversations
@conversations.each do |conversation|
  json.set! conversation.id do
    json.partial! 'api/conversations/conversation',
      messages: conversation.messages.order(created_at: :asc)
  end
end
