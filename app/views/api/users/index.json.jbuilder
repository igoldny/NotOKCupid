@users.each do |user|
  json.set! user.id do
    json.questions user.questions
    json.responses user.responses
    json.id user.id
    json.username user.username
    json.gender user.gender
    json.sexuality user.sexuality
    json.age user.age
    json.location user.location
  end
end
