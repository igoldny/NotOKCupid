# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Conversation.destroy_all
Message.destroy_all
Question.destroy_all
Like.destroy_all
Answer.destroy_all
Response.destroy_all



  # seed question and answers

q1 = Question.create(title: "Could you date someone who was really messy?")

a1 = Answer.create(question_id: q1.id, body: "Yes", order: 1)
a2 = Answer.create(question_id: q1.id, body: "No", order: 2)

q2 = Question.create(title: "Is astrological sign at all important in a match?")

a3 = Answer.create(question_id: q2.id, body: "Yes", order: 1)
a4 = Answer.create(question_id: q2.id, body: "No", order: 2)

q3 = Question.create(title: "How willing are you to meet someone from NotOKCupid in person?")

a5 = Answer.create(question_id: q3.id, body: "Very willing!", order: 1)
a6 = Answer.create(question_id: q3.id, body: "Hesitant, but willing to give it a shot.", order: 2)
a7 = Answer.create(question_id: q3.id, body: "Not very willing unless I'm with a friend.", order: 3)

q4 = Question.create(title: "Have you smoked a cigarette in the last 6 months?")

a8 = Answer.create(question_id: q4.id, body: "Yes", order: 1)
a9 = Answer.create(question_id: q4.id, body: "No", order: 2)

q5 = Question.create(title: "Would you date a programmer?")

a10 = Answer.create(question_id: q5.id, body: "Yes", order: 1)
a11 = Answer.create(question_id: q5.id, body: "No", order: 2)
a12 = Answer.create(question_id: q5.id, body: "Maybe, if he could properly seed my database", order: 3)

q6 = Question.create(title: "Which would you rather be?")

a13 = Answer.create(question_id: q6.id, body: "Normal", order: 1)
a14 = Answer.create(question_id: q6.id, body: "Weird", order: 2)

q7 = Question.create(title: "Could you date someone who does drugs?")

a15 = Answer.create(question_id: q7.id, body: "Yes", order: 1)
a16 = Answer.create(question_id: q7.id, body: "No", order: 2)
a17 = Answer.create(question_id: q7.id, body: "Only soft drugs like marijuana.", order: 3)

q8 = Question.create(title: "Would you prefer to date someone of your own skin color / racial background?")

a18 = Answer.create(question_id: q8.id, body: "Yes", order: 1)
a19 = Answer.create(question_id: q8.id, body: "No", order: 2)

q9 = Question.create(title: "About how long do you want your next relationship to last?")

a20 = Answer.create(question_id: q9.id, body: "One night ;)", order: 1)
a21 = Answer.create(question_id: q9.id, body: "6 months", order: 2)
a22 = Answer.create(question_id: q9.id, body: "Over 1 year", order: 3)
a23 = Answer.create(question_id: q9.id, body: "Forever", order: 4)

q10 = Question.create(title: "Would you consider sleeping with someone on the first date?")

a24 = Answer.create(question_id: q10.id, body: "Yes", order: 1)
a25 = Answer.create(question_id: q10.id, body: "No", order: 2)

q11 = Question.create(title: "Would you consider having an open relationship(i.e., one where you can see other people)?")

a26 = Answer.create(question_id: q11.id, body: "Yes", order: 1)
a27 = Answer.create(question_id: q11.id, body: "No", order: 2)
a28 = Answer.create(question_id: q11.id, body: "I'd be willing to try it out.", order: 3)

q12 = Question.create(title: "Are you currently employed?")

a29 = Answer.create(question_id: q12.id, body: "Yes", order: 1)
a30 = Answer.create(question_id: q12.id, body: "No", order: 2)

q13 = Question.create(title: "In a relationship, who do you prefer to be taller?")

a31 = Answer.create(question_id: q13.id, body: "Yes", order: 1)
a32 = Answer.create(question_id: q13.id, body: "No", order: 2)
a33 = Answer.create(question_id: q13.id, body: "Don't care", order: 3)

q14 = Question.create(title: "Rate your self-confidence:")

a34 = Answer.create(question_id: q14.id, body: "Extremely high", order: 1)
a35 = Answer.create(question_id: q14.id, body: "Higher than average", order: 2)
a36 = Answer.create(question_id: q14.id, body: "Around average", order: 3)
a37 = Answer.create(question_id: q14.id, body: "Below average", order: 4)
a38 = Answer.create(question_id: q14.id, body: "Very low", order: 5)

q15 = Question.create(title: "How important is money/wealth for you in a match?")

a39 = Answer.create(question_id: q15.id, body: "Very important", order: 1)
a40 = Answer.create(question_id: q15.id, body: "Relatively important", order: 2)
a41 = Answer.create(question_id: q15.id, body: "Not important", order: 3)

q16 = Question.create(title: "How important is religion/God in your life?")

a42 = Answer.create(question_id: q16.id, body: "Very important", order: 1)
a43 = Answer.create(question_id: q16.id, body: "Relatively important", order: 2)
a44 = Answer.create(question_id: q16.id, body: "Not important", order: 3)

q17 = Question.create(title: "Do you enjoy discussing politics?")

a45 = Answer.create(question_id: q17.id, body: "Yes", order: 1)
a46 = Answer.create(question_id: q17.id, body: "No", order: 2)
a47 = Answer.create(question_id: q17.id, body: "Only if we share similar views", order: 3)

q18 = Question.create(title: "Are you a cat person or a dog person?")

a48 = Answer.create(question_id: q18.id, body: "Cat", order: 1)
a49 = Answer.create(question_id: q18.id, body: "Dog", order: 2)
a50 = Answer.create(question_id: q18.id, body: "Both", order: 3)
a51 = Answer.create(question_id: q18.id, body: "Neither", order: 4)

q19 = Question.create(title: "Have you ever traveled around another country alone?")

a52 = Answer.create(question_id: q19.id, body: "Yes", order: 1)
a53 = Answer.create(question_id: q19.id, body: "No", order: 2)

q20 = Question.create(title: "Which of the following types of intelligence do you value most?")

a54 = Answer.create(question_id: q20.id, body: "Logical / Mathematical", order: 1)
a55 = Answer.create(question_id: q20.id, body: "Social / Interpersonal", order: 2)
a56 = Answer.create(question_id: q20.id, body: "Visual / Artistic", order: 3)


# seed 100 users

prof_pics = HTTParty.get('https://pixabay.com/api/?key=4030205-09edb77b80f0f13b40ea34bea&q=face&image_type=photo')

urls = prof_pics["hits"].map { |pic| pic["webformatURL"] }

user1 = User.create(
username: "getBernt",
password: "bernie",
sexuality: "straight",
gender: "man",
email: "bernie@bernie.com",
age: 75,
location: "10001",
summary: "I speak for the people!!",
doing: "Change the world",
good_at: "Dating and debating ;)",
favorites: "Harry Potter and Fifty Shades of Gray. Simultaneously.",
thinking: "How to improve this great country we call America!!!",
friday: "One word: rave.",
message_if: "You want to party, hard.",
image: File.open("#{Rails.root}/app/assets/images/bernie_face.jpg")
)

count = 0

Question.all.each do |question|
  answer_num = question.answers.length
  rand_answer = rand(answer_num)
  acceptable_length = rand(1..answer_num)
  importance_amounts = [1, 10, 50]
  rand_importance = rand(3)
  acceptables = []

  acceptable_length.times do |num|
    acceptables << question.answers[num].body
  end

  unless count < 17
    Response.create(
      answer_id: question.answers[rand_answer].id,
      user_id: user1.id,
      acceptable_answers: acceptables,
      importance: importance_amounts[rand_importance],
      explanation: Faker::Hipster.sentence
    )
  end

  count += 1
end


user2 = User.create(
username: "wesRobAndSin",
password: "robinson",
sexuality: "straight",
gender: "man",
email: "wpr124@gmail.com",
age: 25,
location: "10463",
summary: "I like to code.",
doing: "Hopefully becoming a software developer. Or I'll be homeless. Or both.",
good_at: "Soccer and stuff.",
favorites: "Too many to say in one blurb.",
thinking: "My future.",
friday: "With my girlfriend.",
message_if: "Don't message me. I'm just a seed!",
image: File.open("#{Rails.root}/app/assets/images/wes_headshot.jpg")
)


user3 = User.create(
username: "ivyloren",
password: "ivyloren",
sexuality: "straight",
gender: "woman",
email: "ivy@ivy.com",
age: 25,
location: 10463,
summary: "I am dating Wes. We are the same human being",
doing: "Traveling and living! Oh, and working at Yelp on the side.",
good_at: "Scrapbooking and understanding people.",
favorites: "A Thousand Splendid Suns.",
thinking: "Pizza",
friday: "Hangin' with Wes.",
message_if: "Don't message, I'm taken!",
prof_pic_id: 3
)

sexualities = ["gay", "straight", "bisexual"]
zips = ["10026", "10027", "10030", "10037", "10039",
  "10001", "10011", "10018", "10019", "10020", "10036",
  "10029", "10035", "10010", "10016", "10017", "10022",
  "10012", "10013", "10014", "10004", "10005", "10006",
  "10007", "10038", "10280", "10002", "10003", "10009",
  "10021", "10028", "10044", "10065", "10075", "10128",
  "10023", "10024", "10025", "10031", "10032", "10033"
]

max_id = 0
total = 0

while total < 200 do
  user = nil;

  username = Faker::Internet.user_name
  password = "password"
  gender = rand(2) == 1 ? "man" : "woman"
  sexuality = sexualities[rand(3)]
  email = Faker::Internet.email
  age = rand(18..150)
  location = zips[rand(zips.length)]
  summary = Faker::Hipster.paragraph
  doing = Faker::Hipster.paragraph
  good_at = Faker::Hipster.paragraph
  favorites = Faker::Hipster.paragraph
  thinking = Faker::Hipster.paragraph
  friday = Faker::Hipster.paragraph
  message_if = Faker::Hipster.paragraph


  user = User.create(
    username: username,
    password: password,
    gender: gender,
    sexuality: sexuality,
    email: email,
    age: age,
    location: location,
    summary: summary,
    doing: doing,
    good_at: good_at,
    favorites: favorites,
    thinking: thinking,
    friday: friday,
    message_if: message_if,
    image: open(urls.sample)
  )


  if user.id
    max_id = user.id if user.id > max_id
    total += 1

    Question.all.each do |question|
      answer_num = question.answers.length
      rand_answer = rand(answer_num)
      acceptable_length = rand(1..2)
      importance_amounts = [1, 10, 50]
      rand_importance = rand(3)
      acceptables = []

      acceptable_length.times do |num|
        acceptables << question.answers[num].body
      end


      Response.create(
        answer_id: question.answers[rand_answer].id,
        user_id: user.id,
        acceptable_answers: acceptables,
        importance: importance_amounts[rand_importance],
        explanation: Faker::Hipster.sentence
      )
    end
  end

end

# seed 100 unique conversations

unique_conversations = []
max_convo_id = 0

while unique_conversations.length < 100 do

  rand_user_one = rand((max_id-99)..max_id)
  rand_user_two = rand((max_id-99)..max_id)

  while rand_user_two == rand_user_one
    rand_user_two = rand((max_id-99)..max_id)
  end

  if unique_conversations.length % 49 == 0
    conversation_pair = [user1.id, rand_user_two]
  elsif unique_conversations.length % 48 == 0
    conversation_pair = [rand_user_one, user1.id]
  else
    conversation_pair = [rand_user_one, rand_user_two]
  end

  unless unique_conversations.include?(conversation_pair)
    unique_conversations << conversation_pair
    conversation = Conversation.create(
      user_one_id: conversation_pair[0],
      user_two_id: conversation_pair[1]
    )
    max_convo_id = conversation.id if conversation.id > max_convo_id
  end

end

# seed 1000 messages

500.times do

  random_conversation = rand((max_convo_id-99)..max_convo_id)
  conversation = Conversation.find(random_conversation)

  if rand(2) == 1
    Message.create(
      author_id: conversation.started_user.id,
      thread_id: conversation.id,
      body: Faker::Hipster.sentence
    )
  else
    Message.create(
      author_id: conversation.received_user.id,
      thread_id: conversation.id,
      body: Faker::Hipster.sentence
    )
  end
end

conversation1 = Conversation.create(
  user_one_id: user1.id,
  user_two_id: user3.id
)

conversation2 = Conversation.create(
  user_one_id: user2.id,
  user_two_id: user1.id
)

Message.create(
  author_id: user1.id,
  thread_id: conversation1.id,
  body: "hey ivy!"
)

Message.create(
  author_id: user3.id,
  thread_id: conversation1.id,
  body: "hey guest, what's up?"
)

Message.create(
  author_id: user2.id,
  thread_id: conversation2.id,
  body: "sup dood"
)

Message.create(
  author_id: user2.id,
  thread_id: conversation2.id,
  body: "answer me bro"
)

Message.create(
  author_id: user2.id,
  thread_id: conversation2.id,
  body: "pls"
)
