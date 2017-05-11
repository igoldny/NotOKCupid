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
  q1= Question.create(title:'תנוחה אהובה')
  a1= Answer.create(question_id: q1.id, body:'דוגי',order:1)
  a2= Answer.create(question_id: q1.id, body:'בן / בת הזוג בסלון ואת/ה רואה פורנו',order:2)
  a3= Answer.create(question_id: q1.id, body:'מסיונרי',order:3)
  a4= Answer.create(question_id: q1.id, body:'69',order:4)
  a5= Answer.create(question_id: q1.id, body:'Speat',order:5)
  a6= Answer.create(question_id: q1.id, body:'42',order:6)
  a7= Answer.create(question_id: q1.id, body:'reverse cowgirl',order:7)
  a8= Answer.create(question_id: q1.id, body:'roast',order:8)
  q2= Question.create(title:'אני אדם של')
  a9= Answer.create(question_id: q2.id, body:'עיניים',order:1)
  a10= Answer.create(question_id: q2.id, body:'משולש',order:2)
  a11= Answer.create(question_id: q2.id, body:'חיוך',order:3)
  a12= Answer.create(question_id: q2.id, body:'חור של תחת',order:4)
  a13= Answer.create(question_id: q2.id, body:'ריסים',order:5)
  a14= Answer.create(question_id: q2.id, body:'נחיר שמאל',order:6)
  a15= Answer.create(question_id: q2.id, body:'כרס',order:7)
  a16= Answer.create(question_id: q2.id, body:'פטמות',order:8)
  a17= Answer.create(question_id: q2.id, body:'החלק האחורי של הברך',order:9)
  q3= Question.create(title:'איפה היית רוצה לסיים את היום שלך במידברן')
  a18= Answer.create(question_id: q3.id, body:'צפייה על השקיעה',order:1)
  a19= Answer.create(question_id: q3.id, body:'השתתפות באורגיה המונית',order:2)
  a20= Answer.create(question_id: q3.id, body:'לשכב על אדמת המדבר ולהתבונן בכוכבים',order:3)
  a21= Answer.create(question_id: q3.id, body:'מסטול',order:4)
  q4= Question.create(title:'מה הפנטזיה הכי גדולה שלך?')
  a22= Answer.create(question_id: q4.id, body:'להריח את בית השחי של הבן זוג',order:1)
  a23= Answer.create(question_id: q4.id, body:'להצליף בטוסיק',order:2)
  a24= Answer.create(question_id: q4.id, body:'סקס בציבור',order:3)
  a25= Answer.create(question_id: q4.id, body:'S&M',order:4)
  q5= Question.create(title:'שנות ניסיון במידברן')
  a26= Answer.create(question_id: q5.id, body:'1',order:1)
  a27= Answer.create(question_id: q5.id, body:'2',order:2)
  a28= Answer.create(question_id: q5.id, body:'3',order:3)
  a29= Answer.create(question_id: q5.id, body:'4',order:4)
  q6= Question.create(title:'פעילות מועדפת במידברן')
  a30= Answer.create(question_id: q6.id, body:'סקס',order:1)
  a31= Answer.create(question_id: q6.id, body:'לרקוד',order:2)
  a32= Answer.create(question_id: q6.id, body:'לעשות סמים',order:3)
  a33= Answer.create(question_id: q6.id, body:'לשתות אלכוהול',order:4)
  a34= Answer.create(question_id: q6.id, body:'להכיר אנשים חדשים',order:5)
  a35= Answer.create(question_id: q6.id, body:'אומנות',order:6)
  q7= Question.create(title:'הסיכוי שאני אשכב עם מישהו/י במידברן הוא')
  a36= Answer.create(question_id: q7.id, body:'100',order:1)
  a37= Answer.create(question_id: q7.id, body:'75',order:2)
  a38= Answer.create(question_id: q7.id, body:'50',order:3)
  a39= Answer.create(question_id: q7.id, body:'25',order:4)
  q8= Question.create(title:'האם אתה מחפש שותף לfree love')
  a40= Answer.create(question_id: q8.id, body:'כן',order:1)
  a41= Answer.create(question_id: q8.id, body:'לא',order:2)
  a42= Answer.create(question_id: q8.id, body:'יש לי כבר',order:3)
  q9= Question.create(title:'הגיפטינג שהכי ארצה לקבל')
  a43= Answer.create(question_id: q9.id, body:'ספנקינג',order:1)
  a44= Answer.create(question_id: q9.id, body:'עיסוי',order:2)
  a45= Answer.create(question_id: q9.id, body:'נשיקה',order:3)
  a46= Answer.create(question_id: q9.id, body:'חיבוק',order:4)
  a47= Answer.create(question_id: q9.id, body:'שיחה מלב אל לב',order:5)
  a48= Answer.create(question_id: q9.id, body:'גלידה',order:6)
  q10= Question.create(title:'מה התכונה הכי חשובה אצל החמות שלך')
  a49= Answer.create(question_id: q10.id, body:'שתכין אחלה חמין',order:1)
  a50= Answer.create(question_id: q10.id, body:'שלא תתערב בחייך',order:2)
  a51= Answer.create(question_id: q10.id, body:'שתהייה מילפית פתוחה להצעות',order:3)
  q11= Question.create(title:'סמים אהובים')
  a52= Answer.create(question_id: q11.id, body:'MD',order:1)
  a53= Answer.create(question_id: q11.id, body:'גראס',order:2)
  a54= Answer.create(question_id: q11.id, body:'פוסטינור',order:3)
  a55= Answer.create(question_id: q11.id, body:'אקמול',order:4)
  a56= Answer.create(question_id: q11.id, body:'אהבה',order:5)
  q12= Question.create(title:'איזה ברנר אתה')
  a57= Answer.create(question_id: q12.id, body:'סטלן',order:1)
  a58= Answer.create(question_id: q12.id, body:'חרמן',order:2)
  a59= Answer.create(question_id: q12.id, body:'בליין',order:3)
  a60= Answer.create(question_id: q12.id, body:'אמן',order:4)
  a61= Answer.create(question_id: q12.id, body:'בעל איבר מין קטן',order:5)
  q13= Question.create(title:'לבוש מידברן אהוב')
  a62= Answer.create(question_id: q13.id, body:'וואנזי',order:1)
  a63= Answer.create(question_id: q13.id, body:'חצאית טוטו',order:2)
  a64= Answer.create(question_id: q13.id, body:'עירום',order:3)
  a65= Answer.create(question_id: q13.id, body:'לדים',order:4)
  q14= Question.create(title:'איזה זין את/ה מעדיפ/ה')
  a66= Answer.create(question_id: q14.id, body:'קצר וקולע',order:1)
  a67= Answer.create(question_id: q14.id, body:'ארוך ומייגע',order:2)
  a68= Answer.create(question_id: q14.id, body:'שמנמן ומזיע',order:3)
  a69= Answer.create(question_id: q14.id, body:'עבה ומפתיע',order:4)
  a70= Answer.create(question_id: q14.id, body:'לא רלוונטי',order:5)
  q15= Question.create(title:'איזה פות את/ה מעדיף')
  a71= Answer.create(question_id: q15.id, body:'וילון',order:1)
  a72= Answer.create(question_id: q15.id, body:'פרסה',order:2)
  a73= Answer.create(question_id: q15.id, body:'בארבי',order:3)
  a74= Answer.create(question_id: q15.id, body:'צבעוני',order:4)
  a75= Answer.create(question_id: q15.id, body:'פאף',order:5)

# seed 100 users

prof_pics = HTTParty.get('https://pixabay.com/api/?key=4030205-09edb77b80f0f13b40ea34bea&q=adult+face&image_type=photo')

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
username: "wesrobinson",
password: "robinson",
sexuality: "straight",
gender: "man",
email: "wpr124@gmail.com",
age: 25,
location: "10463",
summary: "I like to code.  I'm also looking for a job as a developer, so if you're an employer please check out my portfolio page at www.wesleyrobinson.me!",
doing: "Hopefully become a software developer.",
good_at: "Soccer, trading, and watching good movies or TV shows!.",
favorites: "Favorite book is A Thousand Splendid Suns. Favorite coding languages are Ruby && JavaScript.",
thinking: "What I can do to better myself.",
friday: "Probably with my girlfriend, either hanging at home or with friends!",
message_if: "Don't message me. I'm just a seed! Contact me at wpr124@gmail.com.",
image: File.open("#{Rails.root}/app/assets/images/wes_headshot.jpg")
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
    conversation_pair = [user2.id, rand_user_two]
  elsif unique_conversations.length % 48 == 0
    conversation_pair = [rand_user_one, user2.id]
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
  user_one_id: user2.id,
  user_two_id: user1.id
)

Message.create(
  author_id: user2.id,
  thread_id: conversation1.id,
  body: "sup dood"
)

Message.create(
  author_id: user2.id,
  thread_id: conversation1.id,
  body: "answer me bro"
)

Message.create(
  author_id: user2.id,
  thread_id: conversation1.id,
  body: "pls"
)
