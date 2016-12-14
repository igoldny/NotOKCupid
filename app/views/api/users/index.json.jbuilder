@users.each do |user|
  json.set! user.id do
    json.questions user.questions
    json.responses user.responses
    json.username user.username
    json.gender user.gender
    json.sexuality user.sexuality
    json.age user.age
    json.location user.location
    json.image_url asset_path(user.image.url)
  end
end
