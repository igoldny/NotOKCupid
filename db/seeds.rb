# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

User.create(
  username: "guest",
  password: "guest",
  sexuality: "straight",
  gender: "woman",
  email: "guest@guest.com",
  age: 100,
  location: 10001,
  summary: "I like long walks on the beach.",
  doing: "Nothing! I'm a complete loser!",
  good_at: "Being alone.",
  favorites: "Harry Potter and Fifty Shades of Gray. Simultaneously.",
  thinking: "Who would ever date me?",
  friday: "Alone. Very alone.",
  message_if: "You don't respect yourself.",
  prof_pic_id: 1
  )

User.create(
  username: "Wesley",
  password: "Robinson",
  sexuality: "straight",
  gender: "man",
  email: "wpr124@gmail.com",
  age: 25,
  location: 10463,
  summary: "I like to code.",
  doing: "Hopefully becoming a software developer. Or I'll be homeless. Or both.",
  good_at: "Soccer and stuff.",
  favorites: "Too many to say in one blurb.",
  thinking: "My future.",
  friday: "With my girlfriend.",
  message_if: "Don't message me. I'm just a seed!",
  prof_pic_id: 2
  )

# User.create(
#   username: "guest",
#   password: "guest",
#   sexuality: "straight",
#   gender: "woman",
#   email: "guest@guest.com",
#   age: 100,
#   location: 10001,
#   summary: "I like long walks on the beach.",
#   doing: "Nothing! I'm a complete loser!",
#   good_at: "Being alone.",
#   favorites: "Harry Potter and Fifty Shades of Gray. Simultaneously.",
#   thinking: "Who would ever date me?",
#   friday: "Alone. Very alone.",
#   message_if: "You don't respect yourself.",
#   prof_pic_id: 1
#   )
#
# User.create(
#   username: "guest",
#   password: "guest",
#   sexuality: "straight",
#   gender: "woman",
#   email: "guest@guest.com",
#   age: 100,
#   location: 10001,
#   summary: "I like long walks on the beach.",
#   doing: "Nothing! I'm a complete loser!",
#   good_at: "Being alone.",
#   favorites: "Harry Potter and Fifty Shades of Gray. Simultaneously.",
#   thinking: "Who would ever date me?",
#   friday: "Alone. Very alone.",
#   message_if: "You don't respect yourself.",
#   prof_pic_id: 1
#   )
